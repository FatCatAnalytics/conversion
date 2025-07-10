classdef CLAswapImporter
    %UNTITLED5 Summary of this class goes here
    %   Detailed explanation goes here

    properties
        SOFR_RAW            % RAW DATA. Temporary table holds imported data 
                            % Unchanged as data is cleaned, etc. Typically
                            % deleted after the class object is created).
        SOFR                % WORKING DATA. Temporary table holding imported 
                            % SOFR swap data
        SOFR_filename       % string of full file path (incluing extension) 
                            % holding the location of the text file holding
                            % the SOFR swap Data
        SOFR_tenorTab       % Swap Tenor Table, associates the tenor (in
                            % months) with the specific swap series.

        LIBOR_RAW           % RAW DATA.

        LIBOR               % LIBOR working data table.

        LIBOR_filename      % path

        LIBOR_tenorTab      % LIBOR 

    end

    methods
        function IMP = CLAswapImporter(SOFR_filename,LIBOR_filename)
            % The CLAswapImporter needs only the filename to be created. It
            % must be either a string or a char (will be converted to a
            % string), and must point to a spreadsheet (end in xls, or
            % xlsx).

            % check that the SOFR file name is text
            if ~or(isstring(SOFR_filename),ischar(SOFR_filename))
                msg = sprintf(['Problem with argument handed to CLAswapImporter.' ...
                    ' SOFR_filename must be either a string or char.']);
                error(msg)
            end

            % check that the SOFR file name is text
            if ~or(isstring(LIBOR_filename),ischar(LIBOR_filename))
                msg = sprintf(['Problem with argument handed to CLAswapImporter.' ...
                    ' LIBOR_filename must be either a string or char.']);
                error(msg)
            end


            % check that the file is a spreadsheet (file extension)
            filenameSplit = strsplit(string(SOFR_filename),".");
            extension = filenameSplit(end);
            if ~contains(extension, "xls")
                msg = sprintf(['Problem with argument handed to CLAswapImporter.' ...
                    ' SOFR_filename must point to a spreadsheet.']);
                error(msg)
            end
            % check that the file is a spreadsheet (file extension)
            filenameSplit = strsplit(string(LIBOR_filename),".");
            extension = filenameSplit(end);
            if ~contains(extension, "xls")
                msg = sprintf(['Problem with argument handed to CLAswapImporter.' ...
                    ' LIBOR_filename must point to a spreadsheet.']);
                error(msg)
            end


            % Store the file name in the file name property
            IMP.SOFR_filename = string(SOFR_filename);
            IMP.LIBOR_filename = string(LIBOR_filename);


        end

        function IMP = importSOFR(IMP)
            % Import the raw SOFR data into the SOFR_RAW table
            %
            %
            %
            %



            vars = [...
                "MONEY"	"datetime"
                "USDSROISON"	"double";                 "USDSROISSW"	"double"
                "USDSROIS2W"	"double";                 "USDSROIS1M"	"double"
                "USDSROIS2M"	"double";                 "USDSROIS3M"	"double"
                "USDSROIS4M"	"double";                 "USDSROIS5M"	"double"
                "USDSROIS6M"	"double";                 "USDSROIS7M"	"double"
                "USDSROIS8M"	"double";                 "USDSROIS9M"	"double"
                "USDSROIS10M"	"double";                 "USDSROIS11M"	"double"
                "USDSROIS1Y"	"double";                 "USDSROIS15M"	"double"
                "USDSROIS18M"	"double";                 "USDSROIS21M"	"double"
                "USDSROIS2Y"	"double";                 "USDSROIS3Y"	"double"
                "USDSROIS4Y"	"double";                 "USDSROIS5Y"	"double"
                "USDSROIS6Y"	"double";                 "USDSROIS7Y"	"double"
                "USDSROIS8Y"	"double";                 "USDSROIS9Y"	"double"
                "USDSROIS10Y"	"double";                 "USDSROIS11Y"	"double"
                "USDSROIS12Y"	"double";                 "USDSROIS13Y"	"double"
                "USDSROIS14Y"	"double";                 "USDSROIS15Y"	"double"
                "USDSROIS20Y"	"double";                 "USDSROIS25Y"	"double"
                "USDSROIS30Y"	"double";                 "USDSROIS35Y"	"double"
                "USDSROIS40Y"	"double";                 "USDSROIS45Y"	"double"
                "USDSROIS50Y"	"double"];
            
            % If row start and end points are not specified, define defaults
            dataLines = [3, Inf];
            
            % Set up the Import Options and import the data
            opts = spreadsheetImportOptions("NumVariables", 40);
            
            % Specify sheet and range
            opts.Sheet = "Sheet2";
            opts.DataRange = dataLines(1, :);
            
            % Specify column names and types
            opts.VariableNames = vars(:,1);
            opts.VariableTypes = vars(:,2);
            
            
            % Import the data
            if isempty(IMP.SOFR_filename)
                msg = fprintf('No SOFR swap file set');
                error(msg)
            end

            workbookFile = IMP.SOFR_filename;
            SOFR_Swap = readtable(workbookFile, opts, "UseExcel", false);
            
            for idx = 2:size(dataLines, 1)
                opts.DataRange = dataLines(idx, :);
                tb = readtable(workbookFile, opts, "UseExcel", false);
                SOFR_Swap = [SOFR_Swap; tb]; %#ok<AGROW>
            end

            IMP.SOFR_RAW = SOFR_Swap;
        end

        function IMP = makeTenorTabs(IMP)

            tenorcell_SOFR = {...
                "USDSROISON"	0.04
                "USDSROISSW"	0.2
                "USDSROIS2W"	0.5
                "USDSROIS1M"	1
                "USDSROIS2M"	2
                "USDSROIS3M"	3
                "USDSROIS4M"	4
                "USDSROIS5M"	5
                "USDSROIS6M"	6
                "USDSROIS7M"	7
                "USDSROIS8M"	8
                "USDSROIS9M"	9
                "USDSROIS10M"	10
                "USDSROIS11M"	11
                "USDSROIS1Y"	12
                "USDSROIS15M"	15
                "USDSROIS18M"	18
                "USDSROIS21M"	21
                "USDSROIS2Y"	24
                "USDSROIS3Y"	36
                "USDSROIS4Y"	48
                "USDSROIS5Y"	60
                "USDSROIS6Y"	72
                "USDSROIS7Y"	84
                "USDSROIS8Y"	96
                "USDSROIS9Y"	108
                "USDSROIS10Y"	120
                "USDSROIS11Y"	132
                "USDSROIS12Y"	144
                "USDSROIS13Y"	156
                "USDSROIS14Y"	168
                "USDSROIS15Y"	180
                "USDSROIS20Y"	240
                "USDSROIS25Y"	300
                "USDSROIS30Y"	360
                "USDSROIS35Y"	420
                "USDSROIS40Y"	480
                "USDSROIS45Y"	540
                "USDSROIS50Y"	600};

            IMP.SOFR_tenorTab = cell2table(tenorcell_SOFR,...
                'variableNames',{'SOFR_SeriesName','Months'});

            tenorcell_LIBOR = {...
                "USDAM3L1Y"	    12.00
                "USDAM3L2Y"	    24.00
                "USDAM3L3Y"	    36.00
                "USDAM3L4Y"	    48.00
                "USDAM3L5Y"	    60.00
                "USDAM3L6Y"	    72.00
                "USDAM3L7Y"	    84.00
                "USDAM3L8Y"	    96.00
                "USDAM3L9Y"	    108.00
                "USDAM3L10Y"	120.00
                "USDAM3L12Y"	144.00
                "USDAM3L15Y"	180.00
                "USDAM3L20Y"	240.00
                "USDAM3L25Y"	300.00
                "USDAM3L30Y"	360.00
                "USDAM3L40Y"	480.00
                "USDAM3L50Y"	600.00};

            IMP.LIBOR_tenorTab = cell2table(tenorcell_LIBOR,...
                'variableNames',{'LIBOR_SeriesName','Months'});            






        end
    
        function IMP = importLIBOR(IMP)

            vars = [...
                "MONEY",	    "datetime"; "USDBKGD",	"string";
                "USDAM3L1Y",	"double";   "USDAM3L1Y1",	"double";
                "USDAM3L2Y",	"double";   "USDAM3L3Y",	"double";
                "USDAM3L4Y",	"double";   "USDAM3L5Y",	"double";
                "USDAM3L6Y",	"double";   "USDAM3L7Y",	"double";
                "USDAM3L8Y",	"double";   "USDAM3L9Y",	"double";
                "USDAM3L10Y",	"double";   "USDAM3L12Y",	"double";
                "USDAM3L15Y",	"double";   "USDAM3L20Y",	"double";
                "USDAM3L25Y",	"double";   "USDAM3L30Y",	"double";
                "USDAM3L40Y",	"double";   "USDAM3L50Y",	"double"];

            % Set workbook file
            if isempty(IMP.LIBOR_filename)
                msg = fprintf('No libor swap file set');
                error(msg)
            end
            workbookFile = IMP.LIBOR_filename;

            % If no sheet is specified, read from Sheet2
            sheetName = "Sheet2";
            
            % If row start and end points are not specified, define defaults
            dataLines = [3, Inf];
            
            % Set up the Import Options and import the data
            opts = spreadsheetImportOptions("NumVariables", 20);
            
            % Specify sheet and range
            opts.Sheet = sheetName;
            opts.DataRange = dataLines(1, :);

            % Specify column names and types
            opts.VariableNames = vars(:,1);
            opts.VariableTypes = vars(:,2);

            % Specify variable properties
            opts = setvaropts(opts, "USDBKGD", "WhitespaceRule", "preserve");
            opts = setvaropts(opts, "USDBKGD", "EmptyFieldRule", "auto");
            
            % Import the data
            IMP.LIBOR_RAW = readtable(workbookFile, opts, "UseExcel", false);
            
            for idx = 2:size(dataLines, 1)
                opts.DataRange = dataLines(idx, :);
                tb = readtable(workbookFile, opts, "UseExcel", false);
                IMP.LIBOR_RAW = [IMP.LIBOR_RAW; tb]; %#ok<AGROW>
            end            





        end
    
        function IMP = createSOFRTable(IMP)
            % createSOFRTable
            %
            % creates the SOFR table by interpolating the full swap curve
            %
            %
            %

            % Make sure we have the tenor tables already created
            if isempty(IMP.SOFR_tenorTab)
                msg = sprintf(['you have not created the SOFR tenor table ' ...
                    'yet for this CLAswapImporter. Run .matTenorTabs and try again.']);
                error(msg)
            end

            % Set the range for interpoloation
            min_months = 0.04;
            max_months = 600;

            % Get the imported (RAW) data to interpolate
            R = IMP.SOFR_RAW;

            % Initialize
            I = NaN(size(R,1),max(IMP.SOFR_tenorTab.Months+1));
            x_data = IMP.SOFR_tenorTab.Months';
            x_interped = [min_months,1:max_months];

            % Loop through row by row (date by date) and interpoloate each
            % row of the raw table
            for i = 1:size(I,1)
                % make sure we don't grab any NaN data
                idx_NonNaNs = ~isnan(R{i,IMP.SOFR_tenorTab.SOFR_SeriesName});
                v_data = R{i,IMP.SOFR_tenorTab.SOFR_SeriesName};
                v_interped = max(0,interp1(x_data(idx_NonNaNs),v_data(idx_NonNaNs),x_interped,'linear','extrap'));
                I(i,:) = v_interped;
            end

            % Turn the matrix with the full interpolated data into a table
            vns_s = strcat("SOFRSWAP_",string(floor(x_interped)));
            s = array2table(I,'VariableNames',vns_s);
            s.SWAPDATE = datenum(R.MONEY);
            s = movevars(s, "SWAPDATE", "Before", 1);

            % Store interpolated table
            IMP.SOFR = s;


        end
    
        function IMP = createLIBORTable(IMP)
            % createLIBORTable
            %
            % creates the LIBOR table by interpolating the full swap curve
            %
            %
            %

            % Make sure we have the tenor tables already created
            if isempty(IMP.LIBOR_tenorTab)
                msg = sprintf(['you have not created the LIBOR tenor table ' ...
                    'yet for this CLAswapImporter. Run .matTenorTabs and try again.']);
                error(msg)
            end


            % Set the range for interpoloation
            min_months = 0.04;
            max_months = 600;

            % Get the imported (RAW) data to interpolate
            R = IMP.LIBOR_RAW;

            % Initialize
            I = NaN(size(R,1),max(IMP.LIBOR_tenorTab.Months+1));
            x_data = IMP.LIBOR_tenorTab.Months';
            x_interped = [min_months,1:max_months];

            % Loop through row by row (date by date) and interpoloate each
            % row of the raw table
            for i = 1:size(I,1)
                % make sure we don't grab any NaN data
                idx_NonNaNs = ~isnan(R{i,IMP.LIBOR_tenorTab.LIBOR_SeriesName});
                v_data = R{i,IMP.LIBOR_tenorTab.LIBOR_SeriesName};
                v_interped = max(0,interp1(x_data(idx_NonNaNs),v_data(idx_NonNaNs),x_interped,'linear','extrap'));
                I(i,:) = v_interped;
            end

            % Turn the matrix with the full interpolated data into a table
            vns_s = strcat("LIBORSWAP_",string(floor(x_interped)));
            s = array2table(I,'VariableNames',vns_s);
            s.SWAPDATE = datenum(R.MONEY);
            s = movevars(s, "SWAPDATE", "Before", 1);


            % Store interpolated table
            IMP.LIBOR = s;






        end
    
    end
end