classdef CLAdataTable
    % CLAdataTable
    %
    %   Holds all numeric table in a more efficient format.  CLAdataTable
    %   class objects cannot hold any string, cell, or other non numeric
    %   formats of data. 
    %

    properties
         DataMat            % A numerical data matrix holding the data for
                            % the data table.  The columns of the matrix
                            % must correspond to data fields.

         VariableNames      % A list of variable names for each of the 
                            % columns of the Data Matrix.
                  
         DateVars           % An optional list of variables that are 
                            % numeric representations of dates

         TaxonomyTabs       % TaxonomyTabs is a data structure holding 
                            % MATLAB tables.  Each table must be named with 
                            % a variable held in VariableNames. All tables 
                            % in the structure must:
                            % (1) have only two variables, one with the 
                            % variable ID (named VariableNameID) and the 
                            % other with the translation of the variable ID
                            % to a categorical variable.
                            % (2) IDs must be numeric and be limited to the
                            % numbers held in the DataMat under the
                            % variable named in the table

    
    end

    methods
        function OBJ = CLAdataTable(DataMatrix,varargin)
            % CLAdataTable(...)
            % CREATE AN INSTANCE of a CLAdataTable class object. Takes a
            % mandatory DataMatrix argument holding the DataMat
            % property, and takes several optional arguments.
            %
            %


            % Set the required DataMatrix property argument
            OBJ.DataMat = DataMatrix;

            % Get any optional arguments and set properties accordingly
            % Set the input parser
            p = inputParser;            
            
            % VariableNames
            % Add optional input for VariableNames
            def = cellstr(strcat("Var",num2str([1:size(OBJ.DataMat,2)]'))');
            addParameter(p,'VariableNames',def,@(x) iscell(x));

            % DateVars
            % Add optional input for DateVars
            def = {};
            addParameter(p,'DateVars',def,@(x) iscell(x));


            % TaxonomyTabs
            % Add optional input for TaxonomyTabs
            def = struct();
            addParameter(p,'TaxonomyTabs',def,@(x) isstruct(x));


            % Parse and set results
            parse(p,varargin{:});
            OBJ.VariableNames = p.Results.VariableNames;
            OBJ.DateVars = p.Results.DateVars;
            OBJ.TaxonomyTabs = p.Results.TaxonomyTabs;

        end

        function t = GimmeCLATable(OBJ,VariableList,varargin)
            % Returns a table corresponding to the matrix returned using
            % gimmematrix
            % 

            % Get any optional arguments
            % Set the input parser
            p = inputParser; 
            
            % DataRange
            % Add optional input for DataRange
            def = [1,size(OBJ.DataMat,1)];
            addParameter(p,'DataRange',def,@(x) isvector(x));

            % DateList
            % Add optional input for DataRange (all dates)
            alldates = OBJ.DataMat(:,strcmpi(OBJ.VariableNames,"file_date"));
            def = alldates;
            addParameter(p,'DateList',def,@(x) isnumeric(x));

            % Parse and set results
            parse(p,varargin{:});
            DataRange = p.Results.DataRange;
            DateList = p.Results.DateList;

            % Create the desired numerical matrix
            [m,~,idx_cols] = GimmeCLAmatrix(OBJ,VariableList,'DataRange',DataRange,'DateList',DateList);

            % Convert the matrix to a table
            varnames = OBJ.VariableNames(idx_cols);
            t = array2table(m,'VariableNames',varnames);


            
        end

        function [m,idx_rows,idx_cols] = GimmeCLAmatrix(OBJ,VariableList,varargin)
            % Returns a vector or column matrix of the CLA Data depending
            % on arguments provided
            %

            % Get any optional arguments
            % Set the input parser
            p = inputParser; 
            
            % DataRange
            % Add optional input for DataRange
            def = [1,size(OBJ.DataMat,1)];
            addParameter(p,'DataRange',def,@(x) isvector(x));

            % DateList
            % Add optional input for DataRange (all dates)
            alldates = OBJ.DataMat(:,strcmpi(OBJ.VariableNames,"file_date"));
            def = alldates;
            addParameter(p,'DateList',def,@(x) isnumeric(x));

            % Parse and set results
            parse(p,varargin{:});
            DataRange = p.Results.DataRange;
            DateList = p.Results.DateList;

            % Limit the returned matrix to the desired DataRange (if no
            % DataRange is given, all rows will be returned, or, if a
            % DateList is given, that will limit the rows).
            % If only a single datarange index is given, just return that
            % index, otherwise return the full set from beginning to end
            if numel(DataRange)>1
                idx_rows = [DataRange(1):DataRange(2)];
            else
                idx_rows = DataRange(1);
            end
            assignin("base","idx_rows",idx_rows)

            % Limit the returned matrix to the desired DateList
            idx_datelist_rows = find(ismember(alldates,DateList));
            idx_rows = intersect(idx_datelist_rows,idx_rows);
            

            % Find out which data series the user wants (as determined by
            % the VariableList argument)
            if or(VariableList == "All",VariableList == "ALL")
                idx_cols = 1:length(OBJ.VariableNames);
            else
                idx_cols = ismember(OBJ.VariableNames,VariableList);
            end

            % Pull out the appropriate columns of the data matrix
            m = OBJ.DataMat(idx_rows,idx_cols);

        end

    end
end