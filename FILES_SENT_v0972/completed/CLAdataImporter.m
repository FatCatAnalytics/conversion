classdef CLAdataImporter
    % 
    % CLAdataImporter
    %   
    %
    %   Holds imported data prior to updating the CLAdataBase
    %
    %

    properties
        L_RAW               % RAW DATA. Temporary table holds imported data 
                            % Unchanged as data is cleaned, etc. Typically
                            % deleted after the class object is created).
        L                   % WORKING DATA. Temporary table holding imported 
                            % Loan data (this table gets deleted when the 
                            % LOAN_updt CLAdataTable class object is 
                            % created)
        LOAN_updt           % CLAdataTable class object holding newly 
                            % imported LOAN data table
        LOAN_filename       % string of full file path (incluing extension) 
                            % holding the location of the text file holding
                            % the Loan Data

        F_RAW               % RAW DATA. Temporary table holds imported data 
                            % Unchanged as data is cleaned, etc. Typically
                            % deleted after the class object is created).
        F                   % WORKING DATA. Temp table holding imported Facility 
                            % data (this table gets deleted when 
                            % the FACILITIES_updt CLAdataTable class object 
                            % is created)                    
        FACILITIES_updt     % CLAdataTable class object holding newly 
                            % imported FACILITIES data table
        FACILITIES_filename % string of full file path (including exension) 
                            % holding the locaiton of the text file holding 
                            % the Facilities data

        B_RAW               % RAW DATA. Temporary table holds imported data 
                            % Unchanged as data is cleaned, etc. Typically
                            % deleted after the class object is created).
        B                   % WORKING DATA. Temp table holding imported Borrower
                            % data (this table gets deleted when 
                            % the BORROWERV_updt and BORROWERS_updt 
                            % CLAdataTable class object is created)                             
        BORROWERV_updt      % CLAdataTable class object holding newly 
                            % imported Variable BORROWER data table
        BORROWERS_updt      % CLAdataTable class object holdilng newly
                            % imported Static BORRWER data table
        BORROWER_filename   % string of full file path (including extension
                            % holdilng the location of the text file
                            % holding the Borrower data)



        TAX                 % taxonomy tables (new or updated)

        Overwrite           % Indicator variable:
                            %   true/1:     overwrite
                            %   false/0:    do not overwrite
              
        Diagnostics         % A structure holding information for 
                            % troubleshooting or other information                    

        

    end

    methods
        function IMP = CLAdataImporter(LOAN_filename,FACILITIES_filename,BORROWER_filename,TAX,varargin)
            % CLAdataImporter 
            % 
            % buid an instance of the CLAdataImporter class
            %   Detailed explanation goes here
            % -------------------------------------------------------------

            % For

            % Set input file location properties
            IMP.LOAN_filename = LOAN_filename;
            IMP.FACILITIES_filename = FACILITIES_filename;
            IMP.BORROWER_filename = BORROWER_filename;
            
            % Set the Taxonomy table
            IMP.TAX = TAX;

            % Set the Overwrite argument to the default of false
            IMP.Overwrite = false;


            % Check that the selected files are text (.txt) files
            fn_L_char = char(IMP.LOAN_filename);
            fn_L_ext = fn_L_char([end-3:end]);
            if ~strcmpi(fn_L_ext,".txt")
                msg = sprintf(['Loan file is not a .txt file.  Imported CLA ' ...
                    'data must be in a .txt format.  Please select a .txt ' ...
                    'file and try again.']);
                error(msg)
            end
            
            fn_F_char = char(IMP.FACILITIES_filename);
            fn_F_ext = fn_F_char([end-3:end]);
            if ~strcmpi(fn_F_ext,".txt")
                msg = sprintf(['Facility file is not a .txt file.  Imported ' ...
                    'CLA data must be in a .txt format.  Please select a ' ...
                    '.txt file and try again.']);
                error(msg)
            end
            
            fn_B_char = char(IMP.BORROWER_filename);
            fn_B_ext = fn_B_char([end-3:end]);
            if ~strcmpi(fn_B_ext,".txt")
                msg = sprintf(['Borrower file is not a .txt file.  Imported ' ...
                    'CLA data must be in a .txt format.  Please select a ' ...
                    '.txt file and try again.']);
                error(msg)
            end

        end

        function IMP = importLOAN(IMP)
            %  IMPORT THE LOAN DATA into temporary L table
            %   Creates:
            %       L_RAW table
            %       L table (like L_RAW but transforms date variables to
            %       datenumber).
            %
            %
            % -------------------------------------------------------------
            
            % Set dataLines
            dataLines = [2, Inf];
            
            VARIABLES = [...
            "Bank_ID",	                    "double"
            "loan_source_system",	        "double"
            "borrower_ID",	                "categorical"
            "Facility_ID",	                "categorical"
            "Loan_ID",	                    "categorical"
            "Index",	                    "double"
            "index_rate_date",	            "double"
            "SBA_Loan_Product_Type",	    "double"
            "Line_of_Business",	            "double"
            "Collateral_Type",	            "double"
            "Loan_Type",	                "double"
            "Loan_Origination_Status",	    "double"
            "Loan_LGD",	                    "double"
            "loan_Syndication_Status",	    "double"
            "accrual_status",	            "double"
            "cre_constructiontype",	        "double"
            "cre_propertytype",	            "double"
            "cre_occupancytype",	        "double"
            "amortization_type",	        "double"
            "swap_type",	                "double"
            "pricing_structure",	        "double"
            "expected_loss",	            "double"
            "loan_origination_date",	    "double"
            "cost_center",	                "double"
            "officer",	                    "double"
            "branch",	                    "double"
            "loan_purpose",	                "double"
            "loan_effective_date",	        "datetime"
            "loan_maturity_date",	        "datetime"
            "original_outstanding_amount",	"double"
            "outstanding_amount",	        "double"
            "index_rate_percent",	        "double"
            "interest_rate_percent",	    "double"
            "floor_index_rate_percent",	    "double"
            "floor_rate_percent",	        "double"
            "spread_bps",	                "double"
            "percent_of_rate_tax_exempt",	"double"
            "file_date",	                "datetime"];
            
            % Set up the Import Options and import the data
            opts = delimitedTextImportOptions("NumVariables", size(VARIABLES,1));
            
            % Specify column names and types
            opts.VariableNames = VARIABLES(:,1);
            opts.VariableTypes = VARIABLES(:,2);

            % Specify range and delimiter
            opts.DataLines = dataLines;
            opts.Delimiter = "|";
            
            % Specify variable properties
            doublevars = VARIABLES(strcmpi(VARIABLES(:,2),"double"),1);
            datevars = VARIABLES(strcmpi(VARIABLES(:,2),"datetime"),1);
            catvars = VARIABLES(strcmpi(VARIABLES(:,2),"categorical"),1);
            
            opts = setvaropts(opts, catvars, "EmptyFieldRule", "auto");
            opts = setvaropts(opts, datevars, "InputFormat", "yyyy-MM-dd", "DatetimeFormat", "preserveinput");
            opts = setvaropts(opts, doublevars, "ThousandsSeparator", ",");
            opts = setvaropts(opts, doublevars, "TrimNonNumeric", true);
            
            % Specify file level properties
            opts.ExtraColumnsRule = "ignore";
            opts.EmptyLineRule = "read";


            % Import the data
            IMP.L_RAW = readtable(IMP.LOAN_filename, opts);
            IMP.L = IMP.L_RAW;

            % Transform date variables to date number
            if ~isempty(datevars)
                try
                    for d = 1:length(datevars)
                        dvarn = char(datevars(d));
                        IMP.L.(dvarn) = datenum(IMP.L_RAW.(dvarn));
                    end
                catch
                    msg = "CANNOT CONVERT TO DATE NUMBER.";
                    error(msg)
                end
                    
            end

        end

        function IMP = importFACILITY(IMP)
            %  IMPORT THE FACILITY DATA into temporary F table
            %   Creates:
            %       F_RAW table
            %       F table (like L_RAW but transforms date variables to
            %       datenumber).
            %
            %
            % -------------------------------------------------------------
            
            % Set dataLines
            dataLines = [2, Inf];
            
            VARIABLES = [...
            "Bank_ID",	                        "double"
            "loan_source_system",	            "double"
            "borrower_ID",	                    "categorical"
            "Facility_ID"	,                   "categorical"
            "Facility_Origination_Status",	    "double"
            "Facility_LGD",	                    "double"
            "Facility_Syndication_Status",	    "double"
            "Facility_Maturity_Date",	        "datetime"
            "Facility_Effective_Date",	        "datetime"
            "Original_Syndication_Commitment_Amount",	"double"
            "Syndication_Commitment_Amount",	"double"
            "Original_Commitment_Amount",	    "double"
            "Commitment_Amount"	                "double",
            "Facility_Origination_Date",	    "datetime"
            "file_date",	                    "datetime"];
            
            
            % Set up the Import Options and import the data
            opts = delimitedTextImportOptions("NumVariables", size(VARIABLES,1));
            
            % Specify range and delimiter
            opts.DataLines = dataLines;
            opts.Delimiter = "|";
            
            % Specify column names and types
            opts.VariableNames = VARIABLES(:,1);
            opts.VariableTypes = VARIABLES(:,2);
            
            % Specify file level properties
            opts.ExtraColumnsRule = "ignore";
            opts.EmptyLineRule = "read";
            
            % Specify variable properties
            doublevars = VARIABLES(strcmpi(VARIABLES(:,2),"double"),1);
            datevars = VARIABLES(strcmpi(VARIABLES(:,2),"datetime"),1);
            catvars = VARIABLES(strcmpi(VARIABLES(:,2),"categorical"),1);
            
            opts = setvaropts(opts, catvars, "EmptyFieldRule", "auto");
            opts = setvaropts(opts, datevars, "InputFormat", "yyyy-MM-dd", "DatetimeFormat", "preserveinput");
            opts = setvaropts(opts, doublevars, "ThousandsSeparator", ",");
            opts = setvaropts(opts, doublevars, "TrimNonNumeric", true);




            % Import the data
            IMP.F_RAW = readtable(IMP.FACILITIES_filename, opts);
            IMP.F = IMP.F_RAW;

            % Transform date variables to date number
            if ~isempty(datevars)
                for d = 1:length(datevars)
                    dvarn = char(datevars(d));
                    IMP.F.(dvarn) = datenum(IMP.F_RAW.(dvarn));
                end
            end

        

        end

        function IMP = importBORROWER(IMP)
            %  IMPORT THE BORROWER DATA into temporary F table
            %   Creates:
            %       B_RAW table
            %       B table (like L_RAW but transforms date variables to
            %       datenumber).
            %
            %
            % -------------------------------------------------------------
            
            % Set dataLines
            dataLines = [2, Inf];
            
            VARIABLES = [...
            "Bank_ID",	            "double"
            "loan_source_system",	"double"
            "borrower_ID",	        "categorical"
            "DNB_Duns",	            "double"
            "NAICS_code",	        "double"
            "sic_code",	            "double"
            "Zipcode",	            "double"
            "country",	            "double"
            "Risk_Rating",	        "double"
            "Risk_Effective_Date",	"double"
            "Revenue_Amount",	    "double"
            "file_date",	        "datetime"];
            
            
            % Set up the Import Options and import the data
            opts = delimitedTextImportOptions("NumVariables", size(VARIABLES,1));
            
            % Specify range and delimiter
            opts.DataLines = dataLines;
            opts.Delimiter = "|";
            
            % Specify column names and types
            opts.VariableNames = VARIABLES(:,1);
            opts.VariableTypes = VARIABLES(:,2);
            
            % Specify file level properties
            opts.ExtraColumnsRule = "ignore";
            opts.EmptyLineRule = "read";
            
            % Specify variable properties
            doublevars = VARIABLES(strcmpi(VARIABLES(:,2),"double"),1);
            datevars = VARIABLES(strcmpi(VARIABLES(:,2),"datetime"),1);
            catvars = VARIABLES(strcmpi(VARIABLES(:,2),"categorical"),1);
            
            opts = setvaropts(opts, catvars, "EmptyFieldRule", "auto");
            opts = setvaropts(opts, datevars, "InputFormat", "yyyy-MM-dd", "DatetimeFormat", "preserveinput");
            opts = setvaropts(opts, doublevars, "ThousandsSeparator", ",");
            opts = setvaropts(opts, doublevars, "TrimNonNumeric", true);


            % Import the data
            IMP.B_RAW = readtable(IMP.BORROWER_filename, opts);
            IMP.B = IMP.B_RAW;

            % Transform date variables to date number
            if ~isempty(datevars)
                for d = 1:length(datevars)
                    dvarn = char(datevars(d));
                    IMP.B.(dvarn) = datenum(IMP.B_RAW.(dvarn));
                end
            end
        end

        function IMP = removeUnusedVars(IMP)
            %
            %
            %
            %
            %
            % -------------------------------------------------------------

            % After discussions with GA, the variables in the list below
            % are unused in the algorithm.  We will remove them at this
            % point
            unusedVarlist = {'loan_source_system','swap_type','country'};
            IMP.L = IMP.L(:,~ismember(IMP.L.Properties.VariableNames, unusedVarlist));
            IMP.F = IMP.F(:,~ismember(IMP.F.Properties.VariableNames, unusedVarlist));
            IMP.B = IMP.B(:,~ismember(IMP.B.Properties.VariableNames, unusedVarlist));


        end

        function IMP = filterLineOfBusiness(IMP,LOB)
            %
            % depending on the line of business that we are estimating, we
            % will filter out certain business types.
            %
            %
            %
            % -------------------------------------------------------------

            % convert the LOB argument to a char
            if isstring(LOB)
                LOB = char(LOB);
            end
            if iscategorical(LOB)
                LOB = char(string(LOB));
            end
            if ~ischar(LOB)
                error("Improper LOB argument class in 'filterLineOfBusiness'.")
            end

            switch LOB
                case 'C&I'
                    idx_LOBtoKeep = ismember(IMP.L.Line_of_Business,[2,8]);
                case 'CRE'
                    idx_LOBtoKeep = [];
                case 'SBA'
                    idx_LOBtoKeep = IMP.L.Line_of_Business==9;
                otherwise
                    error("Unrecognized LOB argument in 'filterLineOfBusiness'.")
            end

            IMP.L = IMP.L(idx_LOBtoKeep,:);
        
        
        
        
        end

        function IMP = makeNumIDs(IMP,IDmaps)
            % TEMPORARY, THIS FUNCTION WILL BE REMOVED WHEN IDS ARE CHANGED
            % TO NUMERIC
            %
            % makeNumIDs: a temporary function that maps the categorical
            % variable IDs to numeric ids using the mapping in the IDmaps
            % argument. IDmaps must be a structure with three fields:
            %
            % borID: a table with variables borrower_ID and borrower_IDnum
            % facID: a table with variables Facility_ID and Facility_IDnum
            % lonID: a table with variables Loan_ID and Loan_IDnum
            %
            % -------------------------------------------------------------

            % LOANS -------------------------------------------------------
            % Get the loan ID map and create an index linking based on the
            % categorical loan id variable.
            lidmap = IDmaps.lonID;
            [ina_lid_L,locb_lid_L] = ismember(IMP.L.Loan_ID,lidmap.Loan_ID);

            % Create a numerical variable (NaNs) and write the new
            % numerical loan id.
            IMP.L.Loan_IDnum = NaN(size(IMP.L.Loan_ID));
            IMP.L.Loan_IDnum(ina_lid_L) = lidmap.Loan_IDNum(locb_lid_L(ina_lid_L));

            % Store any bad data in the diagnostics structure
            IMP.Diagnostics.BadLoanData_LoanIDNumsNotFound = IMP.L(~ina_lid_L,:);
            IMP.Diagnostics.BadLoanData_LoanIDNumsNotFound.Properties.Description = ...
                'Bad Loan Data where Loan ID is in the loan table but not found in map.';

            % Remove the categorical field and replace it with the
            % numerical
            IMP.L.Loan_ID = IMP.L.Loan_IDnum;
            IMP.L.Loan_IDnum = [];

            % FACILITIES --------------------------------------------------
            % Get the facility ID map and create an index linking based on the
            % categorical facility id variable.
            fidmap = IDmaps.facID;
            [ina_fid_L,locb_fid_L] = ismember(IMP.L.Facility_ID,fidmap.Facility_ID);
            [ina_fid_F,locb_fid_F] = ismember(IMP.F.Facility_ID,fidmap.Facility_ID);

            % Create a numerical variable (NaNs) and write the new
            % numerical loan id.
            IMP.L.Facility_IDnum = NaN(size(IMP.L.Facility_ID));
            IMP.F.Facility_IDnum = NaN(size(IMP.F.Facility_ID));
            IMP.L.Facility_IDnum(ina_fid_L) = fidmap.Facility_IDNum(locb_fid_L(ina_fid_L));
            IMP.F.Facility_IDnum(ina_fid_F) = fidmap.Facility_IDNum(locb_fid_F(ina_fid_F));

            % Store any bad data in the diagnostics structure
            IMP.Diagnostics.BadFacDATA_FacIDNumsNotFound = IMP.F(~ina_fid_F,:);
            IMP.Diagnostics.BadFacDATA_FacIDNumsNotFound.Properties.Description = ...
                'Facilities Data where Facility ID is in the facilities table but not found in map.';
            IMP.Diagnostics.BadLoanDATA_FacIDNumsNotFound = IMP.L(~ina_fid_L,:);
            IMP.Diagnostics.BadLoanDATA_FacIDNumsNotFound.Properties.Description = ...
                'Loan Data where Facility ID is in the loan table but not found in map.';

            % Remove the categorical field and replace it with the
            % numerical
            IMP.L.Facility_ID = IMP.L.Facility_IDnum;
            IMP.F.Facility_ID = IMP.F.Facility_IDnum;
            IMP.L.Facility_IDnum = [];
            IMP.F.Facility_IDnum = [];


            % BORROWERS ---------------------------------------------------
            % Get the borrower ID map and create an index linking based on 
            % the categorical borrower id variable.
            bidmap = IDmaps.borID;
            [ina_bid_L,locb_bid_L] = ismember(IMP.L.borrower_ID,bidmap.borrower_ID);
            [ina_bid_F,locb_bid_F] = ismember(IMP.F.borrower_ID,bidmap.borrower_ID);
            [ina_bid_B,locb_bid_B] = ismember(IMP.B.borrower_ID,bidmap.borrower_ID);

            % Create a numerical variable (NaNs) and write the new
            % numerical loan id.
            IMP.L.borrower_IDnum = NaN(size(IMP.L.borrower_ID));
            IMP.F.borrower_IDnum = NaN(size(IMP.F.borrower_ID));
            IMP.B.borrower_IDnum = NaN(size(IMP.B.borrower_ID));            
            IMP.F.borrower_IDnum(ina_bid_F) = bidmap.borrower_IDNum(locb_bid_F(ina_bid_F));
            IMP.B.borrower_IDnum(ina_bid_B) = bidmap.borrower_IDNum(locb_bid_B(ina_bid_B));

            % Store any bad data in the diagnostics structure
            IMP.Diagnostics.BadLONData_BorIDNumsNotInMap = IMP.L(~ina_bid_L,:);
            IMP.Diagnostics.BadLONData_BorIDNumsNotInMap.Properties.Description = ...
                'Loan data with borrower id not found in map.';
            IMP.Diagnostics.BadFACData_BorIDNumsNotInMap = IMP.F(~ina_bid_F,:);
            IMP.Diagnostics.BadFACData_BorIDNumsNotInMap.Properties.Description = ...
                'Facilities data with borrower id not found in map.';
            IMP.Diagnostics.BadBORData_BorIDNumsNotInMap = IMP.B(~ina_bid_B,:);
            IMP.Diagnostics.BadBORData_BorIDNumsNotInMap.Properties.Description = ...
                'Borrower data with borrower id not found in map.';

            % Remove the categorical field and replace it with the
            % numerical
            IMP.L.borrower_ID = IMP.L.borrower_IDnum;
            IMP.F.borrower_ID = IMP.F.borrower_IDnum;
            IMP.B.borrower_ID = IMP.B.borrower_IDnum;
            IMP.L.borrower_IDnum = [];            
            IMP.F.borrower_IDnum = [];
            IMP.B.borrower_IDnum = [];

        end

        function IMP = checkData(IMP,varargin)
            %
            %
            %
            %
            %
            %
            % -------------------------------------------------------------   
            % Get any optional arguments and set properties accordingly
            % Set the input parser (if the user is running it from an app)
            p = inputParser;

            % RUN FROM OPTION
            def = '';
            defmsg = sprintf(['Problem with the run from option input. the ' ...
                'run from option must be a string or a char']);
            addParameter(p,'RunFrom',def);

            % Parse and set results
            parse(p,varargin{:});
            RunFrom = p.Results.RunFrom;

            % Set up RunFrom. In case we are not running this from the app,
            % we insert a dummy structure for the RunFrom argument.
            if isempty(RunFrom)
                RunFrom = struct();
                RunFrom.Text = "";
            end  

            

            % LOAN DATA ---------------------------------------------------
            % Identify any loans whose Facility_ID is not in the Facility
            % data.
            idx_FID_inLoan_notinFac = ~ismember(IMP.L.Facility_ID,IMP.F.Facility_ID);

            % NOTE: We do not identify and remove loans whose borrower_ID 
            % is not in the Facility data.  Based on email exchange with
            % Ryan Allan, we link Loan to Facility using Facility ID, and
            % Facility to Borrower using Borrower ID.  The Borrower ID in
            % the Loan data may be incorrect.

            % Clean Data
            IMP.Diagnostics.BadLoanData_FIDnotInFAC = IMP.L(idx_FID_inLoan_notinFac,:);
            IMP.Diagnostics.BadLoanData_FIDnotInFAC.Properties.Description = ...
                'Loan data with Facility ID in Loan data that is not found in the Facility data.';
            IMP.L = IMP.L(~idx_FID_inLoan_notinFac,:);

            % Identify any loans whose Loan ID is missing
            IMP.Diagnostics.BadLoanData_missingLoanID = IMP.L(ismissing(IMP.L.Loan_ID),:);
            IMP.L = IMP.L(~ismissing(IMP.L.Loan_ID),:);


        end

        function reportString = reportChecks(IMP)
            %
            % returns reportString, which is a string that outlines how
            % many records have been removed due to bad data
            %
            % Also writes tables holding removed records to spreadsheets
            % for analysis.
            %
            % -------------------------------------------------------------

            if isempty(IMP.Diagnostics)
                reportString = "No Diagnostics, you need to run checkdata and/or make num ids first.";
            else
                reportString = [];
                DiagnosticTabs = fieldnames(IMP.Diagnostics);
                ndiagnostics = length(DiagnosticTabs);

                % Loop through each of the diagnostic tables
                for d = 1:ndiagnostics

                    % Get the table (call it T)
                    T = IMP.Diagnostics.(char(DiagnosticTabs{d}));

                    % Export the table
                    filename = strcat(DiagnosticTabs{d},".xlsx");
                    writetable(T,filename,'WriteMode','overwrite');
                    str = sprintf('%s\n--> %.0f records removed.\n--> diagnostic table (%s) exported\n\n',...
                        T.Properties.Description,size(T,1),filename);
                    if d==1
                        reportString = sprintf('%s\n',str);
                    else
                        reportString = sprintf('%s\n%s\n',reportString,str);
                    end
                end
            end




        end

        function IMP = makedataTables(IMP)
            %
            % Makes CLAdataTable class objects:
            %   LOAN_updt
            %   FACILITIES_updt
            %   BORROWERV_updt
            %   BORROWERS_updt
            %
            %
            % -------------------------------------------------------------

            variableBorVars = {'borrower_ID','Risk_Rating','NAICS_code','Zipcode','file_date'};
            staticBorVars = {'borrower_ID'};
            dv_B = {'file_date'};
            IMP.BORROWERV_updt = CLAdataTable(IMP.B{:,variableBorVars},...
                'VariableNames',variableBorVars,...
                'TaxonomyTabs',IMP.TAX,...
                'DateVars',dv_B);

            IMP.BORROWERS_updt = CLAdataTable(IMP.B{:,staticBorVars},...
                'VariableNames',staticBorVars,...
                'TaxonomyTabs',IMP.TAX);

            dv_F = {'Facility_Maturity_Date','Facility_Effective_Date',...
                'Facility_Origination_Date','file_date'};
            IMP.FACILITIES_updt = CLAdataTable(IMP.F{:,:},...
                'VariableNames',IMP.F.Properties.VariableNames,...
                'TaxonomyTabs',IMP.TAX,...
                'DateVars',dv_F);

            dv_L = {'index_rate_date','loan_origination_date','loan_effective_date',...
                'loan_maturity_date','file_date'};
            IMP.LOAN_updt = CLAdataTable(IMP.L{:,:},...
                'VariableNames',IMP.L.Properties.VariableNames,...
                'TaxonomyTabs',IMP.TAX,...
                'DateVars',dv_L);


        end

        function saveRaw(IMP)
            %
            % Stores the raw, imported data to be used for troubleshooting
            %
            %
            %
            %
            %
            % -------------------------------------------------------------

            % overwrite any existing raw data imported
            L_RAW = IMP.L_RAW;
            F_RAW = IMP.F_RAW;
            B_RAW = IMP.B_RAW;
            save('RAW.mat','L_RAW', 'F_RAW', 'B_RAW')
            IMP.L_RAW = [];
            IMP.F_RAW = [];
            IMP.B_RAW = [];


        end
       
        function DB = makeNewDB(IMP)
            %
            % this function creates a new CLAdataBase from the data
            % imported in the CLAdataImporter (to be used if we're not
            % adding data to an existing DB
            %
            %
            % -------------------------------------------------------------

            % Check to see if we've created the DB tables
            err_badDBtab = "";
            missing_LOAN_updt = isempty(IMP.LOAN_updt);
            if ~missing_LOAN_updt
                wrong_class_LOAN = ~strcmpi(class(IMP.LOAN_updt),'CLAdataTable');
                if wrong_class_LOAN
                    err_badDBtab = strcat(err_badDBtab,sprintf('Loan Update DB is incorrect class.\n'));
                end
            else
                err_badDBtab = strcat(err_badDBtab,sprintf('Loan Update DB is missing.\n'));
            end

            missing_FAC_updt = isempty(IMP.FACILITIES_updt);
            if ~missing_FAC_updt
                wrong_class_FAC = ~strcmpi(class(IMP.FACILITIES_updt),'CLAdataTable');
                if wrong_class_FAC
                    err_badDBtab = strcat(err_badDBtab,sprintf('Facility Update DB is incorrect class.\n'));
                end
            else
                err_badDBtab = strcat(err_badDBtab,sprintf('Facility Update DB is missing.\n'));
            end

            missing_BORV_updt = isempty(IMP.BORROWERV_updt);
            if ~missing_BORV_updt
                wrong_class_borv = ~strcmpi(class(IMP.BORROWERV_updt),'CLAdataTable');
                if wrong_class_borv
                    err_badDBtab = strcat(err_badDBtab,sprintf('Borrower (V) Update DB is incorrect class.\n'));
                end
            else
                err_badDBtab = strcat(err_badDBtab,sprintf('Borrower (V) Update DB is missing.\n'));
            end

            missing_BORS_updt = isempty(IMP.BORROWERS_updt);
            if ~missing_BORS_updt
                wrong_class_bors = ~strcmpi(class(IMP.BORROWERS_updt),'CLAdataTable');
                if wrong_class_bors
                    err_badDBtab = strcat(err_badDBtab,sprintf('Borrower (S) Update DB is incorrect class.\n'));
                end
            else
                err_badDBtab = strcat(err_badDBtab,sprintf('Borrower (S) Update DB is missing.\n'));
            end

            if any([missing_LOAN_updt,missing_FAC_updt,missing_BORV_updt,missing_BORV_updt])
                error(err_badDBtab)
            end

            if isvarname('wrong_class_LOAN')
                if wrong_class_bors
                    error(err_badDBtab)
                end
            end
            if isvarname('wrong_class_FAC')
                if wrong_class_FAC
                    error(err_badDBtab)
                end
            end
            if isvarname('wrong_class_borv')
                if wrong_class_borv
                    error(err_badDBtab)
                end
            end
            if isvarname('wrong_class_bors')
                if wrong_class_bors
                    error(err_badDBtab)
                end
            end


            % If no errors, build the database
            DB = CLAdataBase(IMP.LOAN_updt,IMP.FACILITIES_updt,IMP.BORROWERV_updt,IMP.BORROWERS_updt);


        end
    end
end