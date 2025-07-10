classdef CLAgrid
    % 
    % CLAgrid
    %
    % CLAgrid is a class object holding the grid information for the CLA 
    % Pricing Interpolation Tool
    %
    %

    properties
        Description         % Description of the grid

        CreatedOn           % Date on which the grid was created

        LoanSize            % A Structure holding information related to loan 
                            % size range and the group splits.

        RiskCategories      % A Structure holding information related to risk 
                            % category range and the group splits.

        TermCategories      % A Structure holding information related to term 
                            % range and the group splits.

        Geographies         %
        CollateralGroups    %
        IndustryGroups      %
        RateType            %
        FacilityType        %
        NewOrRenewal        %

        Weights             %
        Lag                 %

        Categoricals        % Categoricals is a table that indicates which 
                            % of the dimensions are categorical (as opposed
                            % to those that are ordinalt or continuous).

        REQTABLE            % REQ_TABLE is the table holding all of the
                            % grid squares but is UNPOPULATED


    end

    methods
        function obj = CLAgrid(TAXONOMYTABS,varargin)
            % -------------------------------------------------------------
            %
            % CLAgrid 
            %  Construct an instance of the CLAgrid class object
            %
            %
            %
            %
            % -------------------------------------------------------------

            % Get any optional arguments and set properties accordingly
            % Set the input parser
            p = inputParser;

            % DESCRIPTION
            def = sprintf("CLA Grid created on %s",datetime());
            defmsg = sprintf(['Problem with the grid description input. the ' ...
                'description must be a string']);
            addParameter(p,'Description',def,...
                @(x)...
                assert(isstring(x),...
                defmsg)...
                );


            % CREATEDON
            def = datetime();

            defmsg = sprintf(['Problem with the grid created on input. the ' ...
                'created-on-date (CreatedOn) must be a date']);
            addParameter(p,'CreatedOn',def,...
                @(x)...
                assert(isdatetime(x),...
                defmsg)...
                );

            % LOAN SIZE (LoanSize)
            % Add optional input for LoanSize data structure
            def = struct();
            def.Min = 0;
            def.Max = 100;
            def.Groups = [0.25,0.5,1,5,10,50];
            defmsg = sprintf(['Problem with the LoanSize input. LoanSize must' ...
                ' be a structure with the fields "Min", "Max", and "Groups".' ...
                '  "Groups" must be a row vector, and "Max" must be greater' ...
                ' than "Miin"']);
            addParameter(p,'LoanSize',def,...
                @(x)...
                assert(and(x.Max > x.Min,...
                and(size(x.Groups,1)==1,...
                all(strcmpi(sort(fieldnames(x)),{'Groups';'Max';'Min'})))),...
                defmsg)...
                );

            % RISK CATEGORIES (RiskCategories)
            % Add optional input for LoanSize data structure
            def = struct();
            def.Min = 1;
            def.Max = 12;
            def.Groups = [3,7];
            defmsg = sprintf(['Problem with the Risk Categories input. RiskCategories must' ...
                ' be a structure with the fields "Min", "Max", and "Groups".' ...
                '  "Groups" must be a row vector, and "Max" must be greater' ...
                ' than "Min"']);
            addParameter(p,'RiskCategories',def,...
                @(x)...
                assert(and(x.Max > x.Min,...
                and(size(x.Groups,1)==1,...
                all(strcmpi(sort(fieldnames(x)),{'Groups';'Max';'Min'})))),...
                defmsg)...
                );   
            
            % TERM CATEGORIES (TermCategories)
            % Add optional input for term data structure
            def = struct();
            def.Min = 1;
            def.Max = 120;
            def.Groups = [36,72];
            defmsg = sprintf(['Problem with the Term Categories input. TermCategories must' ...
                ' be a structure with the fields "Min", "Max", and "Groups".' ...
                '  "Groups" must be a row vector, and "Max" must be greater' ...
                ' than "Miin"']);
            addParameter(p,'TermCategories',def,...
                @(x)...
                assert(and(x.Max > x.Min,...
                and(size(x.Groups,1)==1,...
                all(strcmpi(sort(fieldnames(x)),{'Groups';'Max';'Min'})))),...
                defmsg)...
                );    

            % COLLATERAL TYPES (CollateralGroups)
            % Add optional input for Collateral type data
            allCollateralTypeIDs = TAXONOMYTABS.Collateral_Type.Collateral_Type;
            allCollateralTypes = categorical(TAXONOMYTABS.Collateral_Type.Collateral_Type_Name);
            weakCollateralTypes = categorical([...
                "All Assets";
                "Cash and Cash Equivalent";
                "Commercial Vehicles";
                "Consumer Vehicles";
                "Land";
                "Real Estate (residential)"; ...
                "Unsecured"]);
            weakCollateralTypeIDs = allCollateralTypeIDs(ismember(weakCollateralTypes,allCollateralTypes));
            strongCollateralTypes = setdiff(allCollateralTypes,weakCollateralTypes);
            strongCollateralTypeIDs = setdiff(allCollateralTypeIDs,weakCollateralTypeIDs);            
            def = array2table([{...
                'weak',   {weakCollateralTypeIDs}, {weakCollateralTypes};...
                'strong', {strongCollateralTypeIDs}, {strongCollateralTypes}...
                }],'VariableNames',{'SecurityGroup','SecurityCategoryIDs','SecurityTypes'});
            def.SecGID = [1:size(def,1)]';
            def = movevars(def, "SecGID", "Before", "SecurityGroup");
            defmsg = sprintf(['Problem with the Security Key Table. SecurityKeyTable must' ...
                ' be a table with the Variables "SecurityGroup", "SecurityCategoryIDs", and "SecurityTypes".' ...
                '  "Groups" must be a row vector, and "Max" must be greater' ...
                ' than "Miin"']);
            addParameter(p,'CollateralGroups',def, @(x) assert(istable(x), defmsg));


            % INDUSTRIES
            def = defIndustryTab();
            defmsg = sprintf(['Problem with the Industry Table. IndustryTable must' ...
                ' be a table with the Variables "IndGrpID","IndGrpName","NAICS2s","NAICSIndustries".' ...
                ]);            
            addParameter(p,'IndustryGroups',def,...
                @(x)...
                assert(istable(x),...
                defmsg)...
                );

            % GEOGRAPHIES
            % Geographies are stored in a table
            [~ ,def,~] = defGeographyTable(TAXONOMYTABS.LocationDatabase);
            
            % Set the level order (rank) for each of the geographies. The
            % geographies are listed from larger to smaller. Metro/Rural is
            % considered at the level just above MSA.
            defmsg = sprintf(['Problem with the Geography Table. Geography table must' ...
                ' be a table with the Variables "Include","LevelIdVar", "LevelNameVar", and "Rank".' ...
                ]);            
            addParameter(p,'Geographies',def,...
                @(x)...
                assert(and(istable(x),...
                istable(x)),...
                defmsg)...
                );

            % RATE TYPE/INDEX
            % Rate type is a scalar providing the rate/indices for which
            % the grid applies
            def = defRatesTab();
            defmsg = sprintf(['Problem with the Rates Table. Rates table must' ...
                ' be a table with the Variables "Index","USE","IndexIDs","PricingStructureIDs".' ...
                ]); 

            addParameter(p,'RateType',def,...
                @(x)...
                assert(and(istable(x),...
                and(all(strcmpi(sort(x.Properties.VariableNames),{'Index','IndexIDs','PricingStructureIDs','USE'})),...
                all(strcmpi(sort(x.Properties.VariableNames),{'Index','IndexIDs','PricingStructureIDs','USE'})))),...
                defmsg)...
                );

            % FACILITY TYPES
            % facility types is a vector providing the facility types (IDX)
            % for which the grid applies
            def = [1,2];

            sprintf(['Problem with the Facility type ' ...
                '(revolving/non-revolving) selection. The origination type must' ...
                ' be a vector value with a maximum value of 2.' ...
                ]);            
            addParameter(p,'FacilityType',def,...
                @(x)...
                assert(and(isvector(x),max(x)<3),...
                defmsg)...
                );            


            % ORIGINATION TYPES
            % NewOrRenewal is a vector providing the origination types for
            % which the grid applies
            def = [1;2];

            defmsg = sprintf(['Problem with the origination type ' ...
                '(new/renewal) selection. The origination type must' ...
                ' be a vector value with a maximum value of 2.' ...
                ]);            
            addParameter(p,'NewOrRenewal',def,...
                @(x)...
                assert(and(isvector(x),max(x)<3),...
                defmsg)...
                );



            % WEIGHTS
            % Weights (on each of the different dimensions in the grid) are 
            % stored in a weights table
            def = table();
            def.CollateralGroups('Raw')                 = 15;
            def.Geographies('Raw')                      = 15;
            def.LoanSize('Raw')                         = 5;
            def.TermCategories('Raw')                   = 10;
            def.RiskCategories('Raw')                   = 20;
            def.Lag('Raw')                              = 25;
            def.FacilityType('Raw')                     = 5;
            def.IndustryGroups('Raw')                   = 5;
            def('Scaled',:) = def('Raw',:) ./ sum(def{'Raw',:});

            defmsg = sprintf(['Problem with the Weights Table. Weights table must' ...
                ' be a table with the Variables "FacilityType","IndustryGroups","Lag","LoanSize", "Location",' ...
                '"RiskCategories", "CollateralGroups", "TermCategories".' ...
                ]);            
            addParameter(p,'Weights',def,...
                @(x)...
                assert(and(istable(x),...
                and(all(strcmpi(sort(x.Properties.VariableNames),{'FacilityType','Industry','Lag','LoanSize', 'Location','SPRiskGroup', 'Security', 'Term'})),...
                min(x)==0)),...
                defmsg)...
                );


            % LAG
            % The lag is set to include 6 months of data 
            def = array2table([0:5]','VariableNames',{'Lag'});
            defmsg = sprintf(['Problem with the Lag Table. Lag table must' ...
                ' be a table with a single variable, "Lag"']);
            addParameter(p,'Lag',def,...
                @(x)...
                assert(and(istable(x),...
                and(all(strcmpi(sort(x.Properties.VariableNames),{'Lag'})),...
                all(strcmpi(sort(x.Properties.VariableNames),{'Lag'})))),...
                defmsg)...
                );


            % REQTABLE
            defvn = {'Geographies','IndustryGroups','CollateralGroups','LoanSize',...
            	'RiskCategories','TermCategories','FacilityType','Lag'};
            defvt = {'double','double','double','double','double','double',...
                'double','double'};
            def = table('Size',[0,length(defvn)],'VariableTypes',defvt,'VariableNames',defvn);
            defmsg = sprintf(['Problem with the REQTABLE Table. REQTABLE table must' ...
                ' be a table with appropriate variable names and types']);
            addParameter(p,'REQTABLE',def,...
                @(x)...
                assert(and(istable(x),...
                and(all(strcmpi(sort(x.Properties.VariableNames),defvn)),...
                all(strcmpi(sort(x.Properties.VariableNames),defvn))...
                )),...
                defmsg)...
                );




            
            % Parse and set results
            parse(p,varargin{:});
            obj.Description = p.Results.Description;
            obj.CreatedOn = p.Results.CreatedOn;
            obj.LoanSize = p.Results.LoanSize;
            obj.RiskCategories = p.Results.RiskCategories;
            obj.TermCategories = p.Results.TermCategories;
            obj.CollateralGroups = p.Results.CollateralGroups;
            obj.IndustryGroups = p.Results.IndustryGroups;
            obj.Geographies = p.Results.Geographies;
            obj.RateType = p.Results.RateType;
            obj.FacilityType = p.Results.FacilityType;
            obj.NewOrRenewal = p.Results.NewOrRenewal;
            obj.Weights = p.Results.Weights;
            obj.Lag = p.Results.Lag;
            obj.REQTABLE = p.Results.REQTABLE;


            % Create Categoricals property. Categoricals is a table that
            % indicates which of the dimensions are categorical (as opposed
            % to those that are continuous).
            obj.Categoricals =array2table(categorical([ 
            "LoanSize","RiskCategories","TermCategories","Geographies",...
            "CollateralGroups","IndustryGroups","RateType","FacilityType",...    
            "NewOrRenewal","Lag"]'),'VariableNames',{'Property'});
            obj.Categoricals.IsCat = logical([0 0 1 1 1 1 1 1 1 0]');


        end
        
        function obj = make_REQTABLE(obj)
            %
            % Creates the reqtable (the requested table) holds the list of
            % requested grid "squares", the points for which we will return
            % an interpolated price.
            %
            %
            %
            %
            %
            %
            %
            % -------------------------------------------------------------

            % Begin with Gegoraphy
            g = obj.Geographies(:,{'Geographies'});
            
            % Expand with Industry
            r1 = table();
            industries = obj.IndustryGroups.IndGrpID;
            for i = 1:length(industries)
                ind = array2table(repmat(industries(i),size(g,1),1),'VariableNames',{'IndustryGroups'});
                r1 = [r1;[g,ind]];
            end
            
            % Expand with Collateral
            r2 = table();
            collIDs = obj.CollateralGroups.SecGID;
            for c = 1:length(collIDs)
                colid = array2table(repmat(collIDs(c),size(r1,1),1),'VariableNames',{'CollateralGroups'});
                r2 = [r2;[r1,colid]];
            end
            
            
            % Expand with Loan Size
            T = parseStruct(obj,'LoanSize');
            
            r3 = table();
            nloansizes = length(obj.LoanSize.Groups)+1;
            nloansizes = size(T,1);
            loansizeIDs = 1:nloansizes;
            loansizeIDs = T.GroupNum;
            loansizeMPs = T.MidPoint;
            for s = 1:nloansizes
                lsid = array2table(repmat(loansizeIDs(s),size(r2,1),1),'VariableNames',{'LoanSize'});
                lsmp = array2table(log(repmat(loansizeMPs(s),size(r2,1),1)),'VariableNames',{'LoanSize'});
                %r3 = [r3;[r2,lsid]];
                r3 = [r3;[r2,lsmp]];
            end            
            
            % Expand with Risk Cat
            r4 = table();
            nriskcats = length(obj.RiskCategories.Groups)+1;
            riskcatIDs = 1:nriskcats;
            for c = 1:nriskcats
                rcid = array2table(repmat(riskcatIDs(c),size(r3,1),1),'VariableNames',{'RiskCategories'});
                r4 = [r4;[r3,rcid]];
            end
            
            % Expand with Term Cat
            % Set the maximum term to 30 years
            T = parseStruct(obj,'TermCategories');

            r5 = table();
            ntermcats = length(obj.TermCategories.Groups)+1;
            ntermcats = size(T,1);
            termcatIDs = 1:ntermcats;
            termcatIDs = T.GroupNum;
            termcatMPs = T.MidPoint;
            for t = 1:ntermcats
                tcid = array2table(repmat(termcatIDs(t),size(r4,1),1),'VariableNames',{'TermCategories'});
                tcmp = array2table(repmat(termcatMPs(t),size(r4,1),1),'VariableNames',{'TermCategories'});
                %r5 = [r5;[r4,tcid]];
                r5 = [r5;[r4,tcmp]];
            end
            
            % Expand with Facility Type
            r6 = table();
            factypes = obj.FacilityType;
            nfactypes = length(factypes);
            for f = 1:nfactypes
                ft = array2table(repmat(factypes(f),size(r5,1),1),'VariableNames',{'FacilityType'});
                r6 = [r6;[r5,ft]];
            end
            
            % Add Lag
            % The requested grid always has a zero lag
            r6.Lag = zeros(size(r6,1),1);

            % output argument
            obj.REQTABLE = r6;


        end

        function T = parseStruct(obj,dimField)
            % parseStruct
            %
            % parses the structure holding groups in a pricing GRID class object
            %
            % returns a table (T) with variables:
            %   GroupNum: number of the group
            %   GreaerThan: the lower edge of the group
            %   LessThan: the upper edge of the group
            %   MidPoint: the midpoing of the group
            %
            % -------------------------------------------------------------
            
            % get the structure holding the min, max and groups
            S = obj.(dimField);
            
            
            % The "extended" vector extends from 0 to the highest value, with interim
            % values at the grouping levels.
            vec_extended = unique([S.Min, S.Groups, S.Max]);
            
            % Use convolution to calculate the midpionts between each of the values in
            % the extended vector
            vec_midpoints = conv(vec_extended, [0.5 0.5], 'valid');
            
            % Create the output table
            T = array2table([[1:length(vec_midpoints)]',...
                vec_extended(1:(end-1))',...
                vec_extended(2:end)',...
                vec_midpoints'],...
                'VariableNames',{'GroupNum','GreaterThan','LessThan','MidPoint'});

        end

        function outputArg = getGridName(obj)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            dbstk = dbstack();
            outputArg = dbstk;
        end
    end
end