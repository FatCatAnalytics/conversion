classdef CLAidMap
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here

    properties
        borID           % Borrower ID table consists of two variables: 
                        %   borrower_ID:    the categorical ID provided in 
                        %                   the raw data and
                        %   borrower_IDNum: the numerical ids corresponding
                        %                   to each borrower_ID

        facID           % Facility ID table consists of two variables: 
                        %   Facility_ID:    the categorical ID provided in 
                        %                   the raw data and
                        %   Facility_IDNum: the numerical ids corresponding
                        %                   to each Facility_ID
        
        lonID           % Loan ID table consists of two variables: 
                        %   Loan_ID:        the categorical ID provided in 
                        %                   the raw data and
                        %   Loan_IDNum:     the numerical ids corresponding
                        %                   to each Loan_ID
    end

    methods
        function obj = CLAidMap(varargin)
            % CLAidMap Construct an instance of this class
            %
            % the CLAidMap is created from one or more *_RAW data tables.
            % It is important to *NOTE* that this creates a brand new
            % CLAidMap, that will only consist of the ids in the input
            % arguments.
            %
            %
            %
            
            % Check Arguments ---------------------------------------------
            vnCheck = false(1,3);
            for a = 1:length(varargin)
                arg = varargin{a};
                s = inputname(a);
                if isempty(s)
                    s = char(num2str(a));
                end

                % Check that the argument is a table
                if ~strcmpi(class(arg),'table')
                    error(sprintf(['CLAidMap: Incorrect class of input ' ...
                        'argument. Argument: %s, is not a table, all input ' ...
                        'arguments must be tables.\n'],s))
                end

                % Check for variables named 'borrower_ID', 'Loan_ID', and
                % 'Facilities_ID'
                vn = arg.Properties.VariableNames;
                idfields = {'borrower_ID', 'Loan_ID','Facility_ID'};
                [hasfields,fieldlocs] = ismember(idfields,vn);
                if ~any(hasfields)
                    error(sprintf(['CLAidMap: input table %s does not have ' ...
                        'any id fields.\n'],s))
                end

                % Check that the variables are categorical
                idfieldlocs = fieldlocs(hasfields);
                for f = 1:length(idfieldlocs)
                    idfieldloc = idfieldlocs(f);
                    if ~iscategorical(arg{:,idfieldloc})
                        error(sprintf(['an id field in table: %s is not a ' ...
                            'categorical variable.\n'],inputname(a)))
                    end
                end
                

                % Add to the variable name check to the variable name check
                % cellstring
                vnCheck = max(hasfields,vnCheck);

                % make sure that the fields are all categoricals

            end
            if ~all(vnCheck)
                missingfields = idfields(~vnCheck);
                error(sprintf('None of the input tables include %s.\n',...
                    strjoin(missingfields,", ")));
                
            end

            % Arguments OK

            % Create ID lists ---------------------------------------------
            % Loop through each of the input tables and collect all of the
            % id variables.
            Loan_ID = [];
            Facility_ID = [];
            borrower_ID = [];
            for a = 1:length(varargin)
                T = varargin{a};
                if ismember('Loan_ID',T.Properties.VariableNames)
                    if iscategorical(T.Loan_ID)
                        Loan_ID = [Loan_ID;T.Loan_ID];
                    else
                        error(sprintf(['Loan_ID in table: %s is not a ' ...
                            'categorical variable.\n'],inputname(a)))
                    end
                end
                if ismember('Facility_ID',T.Properties.VariableNames)
                    if iscategorical(T.Facility_ID)
                        Facility_ID = [Facility_ID;T.Facility_ID];
                    else
                        error(sprintf(['Loan_ID in table: %s is not a ' ...
                            'categorical variable.\n'],inputname(a)))
                    end
                end
                if ismember('borrower_ID',T.Properties.VariableNames)
                    if iscategorical(T.borrower_ID)
                        borrower_ID = [borrower_ID;T.borrower_ID];
                    else
                        error(sprintf(['borrower_ID in table: %s is not a ' ...
                            'categorical variable.\n'],inputname(a)))
                    end                        
                end
            end

            % Create the Borower ID table (borID property) ----------------
            borrower_IDs = unique(borrower_ID);
            borrower_IDs(ismissing(borrower_IDs)) = [];
            borrower_IDNums = [1:length(borrower_IDs)]';
            obj.borID = [array2table(borrower_IDs,'VariableNames',{'borrower_ID'}),...
                array2table(borrower_IDNums,'VariableNames',{'borrower_IDNum'})];
            
            % Create the Facility ID table (facID property) ---------------
            Facility_IDs = unique(Facility_ID);
            Facility_IDs(ismissing(Facility_IDs)) = [];
            Facility_IDNums = [1:length(Facility_IDs)]';
            obj.facID = [array2table(Facility_IDs,'VariableNames',{'Facility_ID'}),...
                array2table(Facility_IDNums,'VariableNames',{'Facility_IDNum'})];

            % Create the Loan ID table (lonID property) -------------------
            Loan_IDs = unique(Loan_ID);
            Loan_IDs(ismissing(Loan_IDs)) = [];
            Loan_IDNums = [1:length(Loan_IDs)]';
            obj.lonID = [array2table(Loan_IDs,'VariableNames',{'Loan_ID'}),...
                array2table(Loan_IDNums,'VariableNames',{'Loan_IDNum'})];



            
        end

        function [obj,numLoanID2add,numFacilityID2add,numborrowerID2add] = updateIdMap(obj,varargin)
            % updateIdMap
            %
            %   Adds IDs to an existing ID map.  IDs that are already 
            %   represented in the ID map are untouched.
            %

            % Initialize outputs
            numLoanID2add = 0;
            numFacilityID2add = 0;
            numborrowerID2add = 0;

            % Check Arguments ---------------------------------------------

            for a = 1:length(varargin)
                arg = varargin{a};
                s = inputname(a);
                if isempty(s)
                    s = char(num2str(a));
                end

                % Check that the argument is a table
                if ~strcmpi(class(arg),'table')
                    error(sprintf(['CLAidMap: Incorrect class of input ' ...
                        'argument. Argument: %s, is not a table, all input ' ...
                        'arguments must be tables.\n'],s))
                end

                % Check for variables named 'borrower_ID', 'Loan_ID', and
                % 'Facilities_ID'
                vn = arg.Properties.VariableNames;
                idfields = {'borrower_ID', 'Loan_ID','Facility_ID'};
                [hasfields,fieldlocs] = ismember(idfields,vn);
                if ~any(hasfields)
                    error(sprintf(['CLAidMap: input table %s does not have ' ...
                        'any id fields.\n'],s))
                end

                % make sure that the fields are all ID fields are 
                % categoricals (not numerical)
                idfieldlocs = fieldlocs(hasfields);
                for f = 1:length(idfieldlocs)
                    idfieldloc = idfieldlocs(f);
                    if ~iscategorical(arg{:,idfieldloc})
                        error(sprintf(['an id field in table: %s is not a ' ...
                            'categorical variable.\n'],inputname(a)))
                    end
                end
               

            end


            % Arguments OK

            % Create ID lists ---------------------------------------------
            % Loop through each of the input tables and collect all of the
            % id variables, even those that are currently in the idMap (we
            % will get rid of duplicates later)
            Loan_ID = [];
            Facility_ID = [];
            borrower_ID = [];
            for a = 1:length(varargin)
                T = varargin{a};
                if ismember('Loan_ID',T.Properties.VariableNames)
                    if iscategorical(T.Loan_ID)
                        Loan_ID = [Loan_ID;T.Loan_ID];
                    else
                        error(sprintf(['Loan_ID in table: %s is not a ' ...
                            'categorical variable.\n'],inputname(a)))
                    end
                end
                if ismember('Facility_ID',T.Properties.VariableNames)
                    if iscategorical(T.Facility_ID)
                        Facility_ID = [Facility_ID;T.Facility_ID];
                    else
                        error(sprintf(['Loan_ID in table: %s is not a ' ...
                            'categorical variable.\n'],inputname(a)))
                    end
                end
                if ismember('borrower_ID',T.Properties.VariableNames)
                    if iscategorical(T.borrower_ID)
                        borrower_ID = [borrower_ID;T.borrower_ID];
                    else
                        error(sprintf(['borrower_ID in table: %s is not a ' ...
                            'categorical variable.\n'],inputname(a)))
                    end                        
                end
            end

            % Identify the New IDs to Add (LOAN)
            if ~isempty(Loan_ID)

                Loan_ID = unique(Loan_ID);
                Loan_ID(ismissing(Loan_ID)) = [];
                Loan_ID_new = Loan_ID(~ismember(Loan_ID,obj.lonID.Loan_ID));

                numLoanID2add = length(Loan_ID_new);
                maxLoanIDNum = max(obj.lonID.Loan_IDNum);
                if numLoanID2add > 0
                    Loan_ID_new_Tab = [array2table(Loan_ID_new,'VariableNames',{'Loan_ID'}),...
                        array2table([1:length(Loan_ID_new)]'+maxLoanIDNum,'VariableNames',{'Loan_IDNum'})];
                    obj.lonID = [obj.lonID;Loan_ID_new_Tab];
                end

            end

            % Identify the New IDs to Add (FACILITY)
            if ~isempty(Facility_ID)
                Facility_ID = unique(Facility_ID);
                Facility_ID(ismissing(Facility_ID)) = [];
                Facility_ID_new = Facility_ID(~ismember(Facility_ID,obj.facID.Facility_ID));

                numFacilityID2add = length(Facility_ID_new);
                maxFacilityIDNum = max(obj.facID.Facility_IDNum);
                if numFacilityID2add > 0
                    Facility_ID_new_Tab = [array2table(Facility_ID_new,'VariableNames',{'Facility_ID'}),...
                        array2table([1:length(Facility_ID_new)]'+maxFacilityIDNum, 'Variablenames',{'Facility_IDNum'})];
                    obj.facID = [obj.facID;Facility_ID_new_Tab];
                end

            end
            
            % Identify the New IDs to Add (BORROWER)
            if ~isempty(borrower_ID)
                borrower_ID = unique(borrower_ID);
                borrower_ID(ismissing(borrower_ID)) = [];
                borrower_ID_new = borrower_ID(~ismember(borrower_ID,obj.borID.borrower_ID));

                numborrowerID2add = length(borrower_ID_new);
                maxborrowerIDNum = max(obj.borID.borrower_IDNum);
                if numborrowerID2add > 0
                    borrower_ID_new_Tab = [array2table(borrower_ID_new,'VariableNames',{'borrower_ID'}),...
                        array2table([1:length(borrower_ID_new)]'+maxborrowerIDNum,'VariableNames',{'borrower_IDNum'})];
                    obj.borID = [obj.borID; borrower_ID_new_Tab];
                end
            end                
        end
    
        function T_NEW = mapIDs(obj,T)
            %
            % mapIDs
            %  maps the id fields (Loan_ID, Facilty_ID, borrower_ID) from
            %  the categorical to the numeric field based on the mapping
            %  tables in the object.
            %
            %  Ids that cannot be found will be returned as NaNs
            % 
            %
            %
            % -------------------------------------------------------------

            T_NEW = T;
            
            % Loan_ID
            if ismember('Loan_ID',T_NEW.Properties.VariableNames) 

                if iscategorical(T_NEW.Loan_ID)
                    T_NEW.Loan_ID_NUM = NaN(size(T_NEW,1),1);
                    [ina_loanid, locb_loanid] = ismember(T_NEW.Loan_ID,obj.lonID.Loan_ID);
                    T_NEW.Loan_ID_NUM(ina_loanid) = obj.lonID.Loan_IDNum(locb_loanid(ina_loanid));
                    T_NEW.Loan_ID = T_NEW.Loan_ID_NUM;
                    T_NEW.Loan_ID_NUM = [];
                end

            end

            % Facility_ID
            if ismember('Facility_ID',T_NEW.Properties.VariableNames)

                if iscategorical(T_NEW.Facility_ID)
                    T_NEW.Facility_ID_NUM = NaN(size(T_NEW,1),1);
                    [ina_facid, locb_facid] = ismember(T_NEW.Facility_ID,obj.facID.Facility_ID);
                    T_NEW.Facility_ID_NUM(ina_facid) = obj.facID.Facility_IDNum(locb_facid(ina_facid));
                    T_NEW.Facility_ID = T_NEW.Facility_ID_NUM;
                    T_NEW.Facility_ID_NUM = [];
                end
            end

            % borrower_ID
            if ismember('borrower_ID',T_NEW.Properties.VariableNames)

                if iscategorical(T_NEW.borrower_ID)
                    T_NEW.borrower_ID_NUM = NaN(size(T_NEW,1),1);
                    [ina_borid, locb_borid] = ismember(T.borrower_ID,obj.borID.borrower_ID);
                    T_NEW.borrower_ID_NUM(ina_borid) = obj.borID.borrower_IDNum(locb_borid(ina_borid));
                    T_NEW.borrower_ID = T_NEW.borrower_ID_NUM;
                    T_NEW.borrower_ID_NUM = [];
                end
            end


        end
    
    end
end