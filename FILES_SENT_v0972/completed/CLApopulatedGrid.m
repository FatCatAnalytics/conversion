classdef CLApopulatedGrid
    % CLApopulatedGrid
    %   
    % Class object holds the fully populated grid (REQGRID_OUT) as well as
    % some information related to the grid
    %
    % -------------------------------------------------------------

    properties
        Description         % Brief description of the populated grid
        CreatedOn           % Created on date (char)

        GRID                % CLAgrid used in creating the populatedGrid

        OBS                 % Observation table, created using the GimmeOBS
                            % function associated with the DB Class Object

        dimensions          % dimensions structure, created with GimmeOBS
                            % function associated with the DB Class Object

        POPULATED_GRID      % The full output requested grid table holding
                            % the requested grid along with distances to
                            % all of the observations

        Parameters          % A structure holding the required simulation 
                            % parameters such as weights, and other factors.
                            % The Parameters structure holds the following:
                            % - Dimension Weights
                            % - Smoothing Parameters
                            %       - Min number of points
                            %       - Initial Aperture
                            %       - Distance Weight Factor
                            % - Confidence Score Distance Weight



    end

    methods
        function obj = CLApopulatedGrid(GRID,varargin)
            % CLApopulatedGrid
            %   Construct an instance of this class
            %   
            % -------------------------------------------------------------

            % SET GRID PROPERTY
            % You always need to have an already created GRID to create a
            % populatedGrid, so it is not a variable input argument
            obj.GRID = GRID;

            % CREATE POPULATED GRID PROPERTY
            % Start with the REQGRID table from the unpopulated GRID, then
            % add empty fields for the additional distance fields.

            % if the REQTABLE in the Input GRID has not been built, create
            % it here
            if size(GRID.REQTABLE,1) < 1
                obj.GRID = obj.GRID.make_REQTABLE;
            end
            obj.POPULATED_GRID = obj.GRID.REQTABLE;
            obj.POPULATED_GRID.Distances = cell(size(obj.POPULATED_GRID,1),1);
            obj.POPULATED_GRID.DistanceLables = cell(size(obj.POPULATED_GRID,1),1);
            obj.POPULATED_GRID.DistanceWts = cell(size(obj.POPULATED_GRID,1),1);
            obj.POPULATED_GRID.WtAvgDistance = NaN(size(obj.POPULATED_GRID,1),1);


            % SET UP INPUT PARSER
            % Get any optional arguments and set properties accordingly
            % Set the input parser
            p = inputParser;


            % DESCRIPTION
            def = sprintf("CLA Populated Grid created on %s",datetime());
            defmsg = sprintf(['Problem with the populated grid description input. the ' ...
                'description must be a string or char variable.']);
            addParameter(p,'Description',def,...
                @(x)...
                assert(or(isstring(x),ischar(x)),...
                defmsg)...
                );


            % PARSE INPUTS AND SET RESULTS
            parse(p,varargin{:});
            obj.Description = p.Results.Description;

            % DEFAULT SETTINGS FOR PARAMETERS
            obj.Parameters = struct();
            obj.Parameters.DimWts = mkemptyDimWeightsTab();
            obj.Parameters.Smoothing.MinNumPts = 20;
            obj.Parameters.Smoothing.InitAper = 0.3;
            obj.Parameters.Smoothing.DistWtFactor = 10;
            obj.Parameters.ConfScorDistWt = 0.5;



        end

        function obj = CalculateDistances(obj,varargin)
            % METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            %
            %
            %
            %
            % -------------------------------------------------------------


            % Get any optional arguments and set properties accordingly
            % Set the input parser
            p = inputParser;

            % RUN FROM OPTION
            def = '';
            defmsg = sprintf(['Problem with the run from option input. the ' ...
                'description must be a string or a char']);
            addParameter(p,'RunFrom',def);

            % Parse and set results
            parse(p,varargin{:});
            RunFrom = p.Results.RunFrom;

            % Get the attributes
            attributes = fieldnames(obj.dimensions);

            % Get the number of gridpoints
            numGridPoints = size(obj.POPULATED_GRID,1);

            % WE'RE NOT CALCULATING THE FULL DISTANCE HERE
            % MUST WAIT UNTIL THE USER HAS ENTERED WEIGHTS AND WE PICK THEM
            % UP

            % Set up RunFrom. In case we're not running this from the app,
            % we insert a dummy structure for the RunFrom argument.
            if isempty(RunFrom)
                RunFrom = struct();
                RunFrom.Label_MyProgBarText.Text = "";
                RunFrom.Label_MyProgBar_Front.BackgroundColor = [0 1 0];
                RunFrom.Label_MyProgBar_Front.Position = [1,2,3,4];
                RunFrom.Panel_MyProgBarBack.Position = [1,2,3,4];
            end

            % Set waitbar
            f = waitbar(0,'calculating distances...');
            f.WindowState = 'Minimize';

            % We loop through, gridpoint by gridpoint, for each gridpoint we calculate
            % the distance to all observations along each dimension (with respect to
            % each attribute).
            for gp = 1:numGridPoints

                waitbar(gp/numGridPoints)

                % Return where we are to the app if applicable
                %RunFrom.tempdata = gp/numGridPoints;
                RunFrom.Label_MyProgBarText.Text = sprintf('%.3f Finished...',gp/numGridPoints);
                RunFrom.Label_MyProgBar_Front.BackgroundColor = [0 1 0];
                RunFrom.Label_MyProgBar_Front.Position(3) = RunFrom.Panel_MyProgBarBack.Position(3) *0.95 *gp/numGridPoints;
                %refresh(RunFrom.CLAInterpolatorUIFigure);
                
                % Initialize the Distance Mat
                % the distance matrix holds 
                DistMatID = NaN(size(obj.OBS,1),length(attributes));
                DistMatDist = NaN(size(obj.OBS,1),length(attributes));
                
                for a = 1:length(attributes)

                    % Initialize the Output matrix (dist) for the single attribute
                    % dist is a two column matrix, the first column will hold the
                    % observation number, and the second column will hold the distance
                    % (with respect to the current attribute) from the gridpoint to the
                    % observation.
                    dist = NaN(size(obj.OBS,1),2);
            
                    % Get the attribute & distvar
                    attribute = attributes{a};
                    distvar = obj.dimensions.(attribute).distvar;
            
                    % Find out if the attribute is a categorical attribute (in which case
                    % we will find the hamming distance)
                    catvarflag = obj.GRID.Categoricals.IsCat(strcmpi(obj.GRID.Categoricals.Property,attribute));
            
                    y = obj.POPULATED_GRID.(distvar)(gp,:);
                    x = obj.OBS.(distvar);
            
                    if catvarflag
                        DistType = 'hamming';
                    else
                        DistType = 'euclidean';
                    end

                    % Calculate the distances
                    % knnsearch returns two vectors: 
                    %   D holds the distances from each point in x (the observations) 
                    %   to y (the requsted grid point), sorted in order closest to 
                    %   furthest.
                    %   Idx holds the index for each point in x (the observations),
                    %   sorted in order closest to furthest.
                    %
                    
                    D_raw = pdist2(y,x,DistType);
                    D = D_raw ./ max(D_raw);
                    dist(:,1) = obj.OBS.OBS_ID;
                    dist(:,2) = D;
            
                    % Fill in DistMats (holds all distances for all attributes)
                    % We have two distance matrices, DistMatID holds the IDs of each of
                    % the observations.  To make sure we don't lose track of which
                    % observation we are measuring, we list the IDs for each attribute.
                    % So each column of DistMatID should be the same.
                    % 
                    % DistMatDist holds the distances (for all attributes) of each 
                    % point in the observations table.
                    %
                    DistMatID(:,a) = dist(:,1);
                    DistMatDist(:,a) = dist(:,2);



                end
                
                % We have now looped through all of the attributes and DistMatDist
                % holds the distances from the gridpoint to each observation for all 
                % attributes. We now calculate the weighted average spread using the
                % weights vector we created above.
                % AT THIS POINT WE JUST PUT IN A NAN PLACEHODER FOR THE
                % WEIGHTED AVERAGE DISTANCE
                % WAVGDIST = DistMatDist * wts;
                WAVGDIST = NaN(size(DistMatDist,1),1);

                % Get the observation Id column
                OBSIDS = DistMatID(:,1);
            
                % Get the Spread associated with the observations
                SPR = obj.OBS.SPR;
            
                % Check that the Observation IDs are all aligned properly
                CHK = all(all(DistMatID(:,[2:end]) == repmat(DistMatID(:,1),1,size(DistMatID,2)-1),2));
                if ~CHK
                    fprintf('ERROR: Ids not aligned for attribute %s\n.', attribute)
                    return
                end
                CHK1 = all(DistMatID(:,1) == obj.OBS.OBS_ID);
                if ~CHK1
                    fprintf('ERROR: Ids not aligned for attribute %s\n.', attribute)
                    return
                end
                        
                % Save the Distances and distance table lables (so that we can create a
                % table easily and we don't forget how the columns line up) for the 
                % individual point
                distancelables = [{'ObsIds','DistanceWtd','SPR'},attributes'];
                distances = sortrows([OBSIDS,WAVGDIST,SPR,DistMatDist],2);
                obj.POPULATED_GRID.Distances{gp} = distances;
                obj.POPULATED_GRID.DistanceLables{gp} = distancelables;


            end
            close(f)


        end

        function obj = CalcGower(obj,varargin)
            % CalcGower
            % Calculates the gower distance from each point in the cell to
            % all observation points
            %
            %
            %
            % -------------------------------------------------------------

            % Get any optional arguments and set properties accordingly
            % Set the input parser
            p = inputParser;

            % RUN FROM OPTION
            def = '';
            defmsg = sprintf(['Problem with the run from option input. the ' ...
                'run from option must be a string or a char']);
            addParameter(p,'RunFrom',def);

            % WEIGHTS
            def = obj.GRID.Weights;
            defmsg = sprintf(['Problem with the weightsTab input. the ' ...
                'description must be a table']);
            addParameter(p,'WeightsTab',def, @(x) istable(x)); 

            % Parse and set results
            parse(p,varargin{:});
            RunFrom = p.Results.RunFrom;
            weightsTab = p.Results.WeightsTab;

            % Calculate the Gower Distance for All Cells to All Observations
            % Initialize
            weights = weightsTab{"Scaled",:};
            weightsVarNames = weightsTab.Properties.VariableNames;
            numgridcells = size(obj.POPULATED_GRID,1);
            
            % Set up RunFrom. In case we're not running this from the app,
            % we insert a dummy structure for the RunFrom argument.
            if isempty(RunFrom)
                RunFrom = struct();
                RunFrom.Label_MyProgBarText.Text = "";
                RunFrom.Label_MyProgBar_Front.BackgroundColor = [0 1 0];
                RunFrom.Label_MyProgBar_Front.Position = [1,2,3,4];
                RunFrom.Panel_MyProgBarBack.Position = [1,2,3,4];
            end            

            % Set waitbar
            f = waitbar(0,'calculating distances...');
            f.WindowState = 'Minimize';
            
            % CALCULATE THE GOWER DISTANCE FOR ALL POINTS
            for r = 1:numgridcells

                waitbar(r/numgridcells)

                % Return where we are to the app if applicable
                %RunFrom.tempdata = gp/numGridPoints;
                RunFrom.Label_MyProgBarText.Text = sprintf('%.3f Finished...',r/numgridcells);
                RunFrom.Label_MyProgBar_Front.BackgroundColor = [0.00,0.45,0.74];
                RunFrom.Label_MyProgBar_Front.Position(3) = RunFrom.Panel_MyProgBarBack.Position(3) *0.95 *r/numgridcells;
                
                % Identify the series (columns) that are associated with the distance
                % dimensions.  The dimensions are listed in the variable names of the
                % weights tab.
                DistLables = obj.POPULATED_GRID.DistanceLables{r};
                [~,idx_DimensionCols] = ismember(weightsVarNames,DistLables);
            
                % Get the full distance matrix (includes fields like Observation Id,
                % Spread, etc. other than just dimensional distances)
                m = obj.POPULATED_GRID.Distances{r};
            
                % Distances for Missing Values are set to 1 (the farthest distance
                % posssible along that specific dimension).
                m(isnan(m)) = 1;
            
                % Separate out the dimensional distances from the other fields in the
                % distance matrix.
                d = m(:,idx_DimensionCols);
            
                % Calculate the distance using the modified gower distance metric
                DIST = d * weights';
            
                % Add the distance to the distance matrix and place it back in the
                % POPULATED_GRID.  Find the position (column number) of the
                % 'DistanceWtd' field and assign the distance to that field.
                idx_DistanceWtd = strcmpi(DistLables,'DistanceWtd');
                m(:,idx_DistanceWtd) = DIST;
                obj.POPULATED_GRID.Distances{r} = m;
            
               
            end

            % Close waitbar
            close(f)





        end

        function obj = CalcPrices(obj,varargin)
            % Interpolate
            % Interpolate points using a nearest neighbor algorithm
            %
            % Loop Through Each Grid Cell and Calculate Price
            % For each cell in the requested grid we have already (above) calculated
            % the distance from each observation to that point.  Here we loop through
            % each of these points and calculate the spread.  First we identify the set
            % of points that are near enough to be included in the calculation.  A
            % distance threshold ("threshold") and a minimum number of observations
            % ("minobs") are set.  If there are at least 'minobs' observations within a
            % distannce of 'threshold' from the grid point, we take a weighted average
            % of those points to calculate the grid point spread.  If there are not
            % enough points (number of pionts < minobs), we increase the aperture a
            % little but adding an increment to the threshold distance.  We then
            % include any observations that are found within this wider distance.  This
            % process is repeated until we have at least minobs observations included
            % in the spread calculation.  Note that there may be more than minobs
            % observations, even if the threshold was increased because many times
            % there are several points equidistant from the grid point, so opening up
            % the apeture even a little bit might include several additional
            % observations.
            %
            % -------------------------------------------------------------

            % Get any optional arguments and set properties accordingly
            % Set the input parser
            p = inputParser;

            % RUN FROM OPTION
            def = '';
            defmsg = sprintf(['Problem with the run from option input. the ' ...
                'description must be a string or a char']);
            addParameter(p,'RunFrom',def);

            % Parse and set results
            parse(p,varargin{:});
            RunFrom = p.Results.RunFrom;

            % SETTINGS
            threshold_initial = 0.15;
            minobs = 10;
            numgridcells = size(obj.POPULATED_GRID,1);
            weightFactor = 10;
            
            % INITIALIZE ADDITIONAL COLUMNS IN THE GRID TABLE
            obj.POPULATED_GRID.SPR_calc = NaN(numgridcells,1);
            obj.POPULATED_GRID.SPR_calc_wtd = NaN(numgridcells,1);
            obj.POPULATED_GRID.nOBS_used = NaN(numgridcells,1);
            obj.POPULATED_GRID.avgDIST = NaN(numgridcells,1);
            obj.POPULATED_GRID.stdSPR = NaN(numgridcells,1);
            obj.POPULATED_GRID.DistanceWts = cell(numgridcells,1);
            obj.POPULATED_GRID.SpreadRange = NaN(numgridcells,1);
            obj.POPULATED_GRID.NearbyPoints = cell(numgridcells,1);


            % Set up RunFrom. In case we're not running this from the app,
            % we insert a dummy structure for the RunFrom argument.
            if isempty(RunFrom)
                RunFrom = struct();
                RunFrom.Label_MyProgBarText_2.Text = "";
                RunFrom.Label_MyProgBar_Front_2.BackgroundColor = [0 1 0];
                RunFrom.Label_MyProgBar_Front_2.Position = [1,2,3,4];
                RunFrom.Panel_MyProgBarBack_2.Position = [1,2,3,4];
            end            

            % Set waitbar
            f = waitbar(0,'calculating distances...');
            f.WindowState = 'Minimize';            
            
            for c = 1:numgridcells

                waitbar(c/numgridcells)

                % Return where we are to the app if applicable
                %RunFrom.tempdata = c/numgridcells;
                RunFrom.Label_MyProgBarText_2.Text = sprintf('%.3f Finished...',c/numgridcells);
                RunFrom.Label_MyProgBar_Front_2.BackgroundColor = [0.77,0.35,0.07];
                RunFrom.Label_MyProgBar_Front_2.Position(3) = RunFrom.Panel_MyProgBarBack_2.Position(3) *0.95 *c/numgridcells;
                %refresh(RunFrom.CLAInterpolatorUIFigure);
            
                % IDENTIFY NEARBY POINTS
                % Set the initial threshold.  The threshold is initially set at this
                % level.  If there are not a sufficient number of observations at or
                % nearer than the threshold, we open the appeture (threshold) a little 
                % and count again.  Once we find at least the minimum number of 
                % observations (i.e. once nobs >= minobs), we have identified the
                % "nearby points"
                threshold = threshold_initial;
                DistLables = obj.POPULATED_GRID.DistanceLables{c};
            
                % Get distances from the current grid point to all observations
                d = obj.POPULATED_GRID.Distances{c};
                nobs = 1;
                while nobs < minobs
            
                    % Identify the distances within the threshold distance. idx_thresh
                    % is the index identifying the observations, d_thresh is the vector
                    % of distances.
                    idx_thresh = d(:,2) <= threshold;
                    d_thresh = d(idx_thresh,:);
                    
                    % Count the number of observations within the threshold distance
                    nobs = sum(idx_thresh);
            
                    % Increase the threshold slightly
                    threshold = threshold + 0.001;
            
                    % Calculate the weights.
                    %
                    % We have to do this after identifying the nearby points because
                    % we don't know exactly how many nearby points there will be (e.g.
                    % if there are more than the minimum number of points within the
                    % initial threshold, or if a tie in distance results in more than
                    % the minimum number included).
                    %
                    % The weights are constructed such that the smallest weight is
                    % 1/weightFactor of the largest weight.  So, for example, if
                    % weightFactor is set to 10, the smallest weight (furthest point) 
                    % will be set to 1/10th of the largest weight (nearest point).
                    % Increasing the weightFactor will cause the closer points to be
                    % more heavily weighted, decreasing the weightFactor will have a
                    % smoothing effect on the spread calculation.
                    % The weights will always sum to 1.
                    %
                    % We group the observations within the threshold by the distance
                    % (so that all observations with the same distance will be given
                    % the same weight).  We can just count the number of unique
                    % distances in the d_thresh matrix (d_thresh holds all of the
                    % observations within the threshold distance)
                    
                    % Calculate the unique distances (within d_thresh)
                    idx_distcol = strcmpi(DistLables,{'DistanceWtd'});
                    distances_unique = unique(d_thresh(:,idx_distcol));
            
                    % Calculate the raw weights (associated with each distance)
                    num_distances = length(distances_unique);
                    wts_raw = 1 ./ linspace(threshold./weightFactor,threshold,num_distances);
            
                    % Match the distances from the raw weights to the distances in
                    % d_thresh
                    [~,idx_wtdistances] = ismember(d_thresh(:,2),distances_unique);
                    wts_matched = [wts_raw(idx_wtdistances)];
                    wts = [wts_matched ./ sum(wts_matched)]';
            
                    % wts should be a column vector (if there is only one distance, it
                    % can be a row vector)
                    if ~iscolumn(wts)
                        wts = wts';
                    end
                    
                end
            
                % Store the nearby point matrix
                obj.POPULATED_GRID.NearbyPoints{c} = d_thresh;
            
                % Calculate the Spread (median spread within nearby points)
                idx_sprcol = strcmpi(DistLables,{'SPR'});
                obj.POPULATED_GRID.SPR_calc(c) = median(d_thresh(:,idx_sprcol));
            
                % Calculate the weighted spread (weighted by the calculated distance
                % weights -- points that are further away receive a smaller weight).
                obj.POPULATED_GRID.SPR_calc_wtd(c) = d_thresh(:,idx_sprcol)' * wts;
            
                % Calculate other metrics
                obj.POPULATED_GRID.nOBS_used(c) = nobs;
                obj.POPULATED_GRID.avgDIST(c) = mean(d(:,idx_distcol));
                obj.POPULATED_GRID.SpreadRange(c) = range(d(:,idx_sprcol));
                obj.POPULATED_GRID.stdSPR(c) = std(d(:,idx_sprcol));
                obj.POPULATED_GRID.DistanceWts{c} = wts;


                % Calculate ConfidenceScore
                % Get the confidence weight on distance
                distwt = obj.Parameters.ConfScorDistWt;
                
                
                % We scale the distances so that for both the number of observations and
                % the 'distance', closer to 1 is better (more observations and smaller
                % average distance).  This makes a larger confidence score
                % better than a smaller.
                numObsScaled = obj.POPULATED_GRID.nOBS_used ./ max(obj.POPULATED_GRID.nOBS_used);
                distScaled = 1-obj.POPULATED_GRID.avgDIST;
                obj.POPULATED_GRID.confidence = distwt .* distScaled + (1-distwt) .* numObsScaled;
                
                obj.POPULATED_GRID.confidenceSCALED = ones(size(obj.POPULATED_GRID.confidence));
                Q = quantile(obj.POPULATED_GRID.confidence,4);
                Q = sort(Q,"ascend");
                for q = 1:length(Q)
                    qv = Q(q);
                    idx = obj.POPULATED_GRID.confidence > qv;
                    obj.POPULATED_GRID.confidenceSCALED(idx) = q+1;
                end


            
            end

            close(f)

        end

        function obj = addLocData(obj,TAXONOMYTABS,varargin)
            %
            %
            % addLocData
            %
            %
            % -------------------------------------------------------------

            % Get any optional arguments and set properties accordingly
            % Set the input parser
            p = inputParser;

            % RUN FROM OPTION
            def = '';
            defmsg = sprintf(['Problem with the run from option input. the ' ...
                'description must be a string or a char']);
            addParameter(p,'RunFrom',def);

            % Parse and set results
            parse(p,varargin{:});
            RunFrom = p.Results.RunFrom;

            % Initialize
            numlocations = size(obj.POPULATED_GRID,1);
            obj.POPULATED_GRID.ZipCodes = cell(numlocations,1);
            obj.POPULATED_GRID.Coordinates = cell(numlocations,1);
            
            % Set waitbar
            f = waitbar(0,'calculating distances...');
            %f.WindowState = 'Minimize';
            
            
            
            % Get the full list of locations in the requested grid and the locations 
            % (as defined in the requsted grid) in the location database so that we can
            % match them up.
            GRID_Locations = obj.GRID.Geographies;
            
            % Each grid can define geography differently, so we need to
            % find how this grid has defined geography.  Create a
            % LocVarsTab and get the LocIDVars
            [~,~,~,LocVarsTab] = defGeographyTable(TAXONOMYTABS.LocationDatabase);
            locationvars = obj.GRID.Geographies.Properties.VariableNames(...
                ismember(obj.GRID.Geographies.Properties.VariableNames,LocVarsTab.LocIDVar));
            
            % Create Augmented Location Database table (augmented with the Geographies
            % variable constructed the same way as in the GRID)
            LocationDatabase = TAXONOMYTABS.LocationDatabase;
            LocationDatabase.Geographies = LocationDatabase{:,locationvars};
            
            
            % Loop through all of the locations in the GRID and find the associated zip
            % codes and Latitudes and Longitudes
            numlocations = size(GRID_Locations,1);
            for g = 1:numlocations
            
                waitbar(g/numlocations)
            
                % Get the current location (ids)
                location = GRID_Locations.Geographies(g,:);
            
                % find the corresponding rows in the location database
                idx_locDatabase = all(LocationDatabase.Geographies == location,2);
                if sum(idx_locDatabase)<1
                    msg = sprintf('possible error in geography data, location not found in location database');
                    warning(msg);
                end
                
                % Get the zip codes associated with this location
                zips = {unique(LocationDatabase.zip_numeric(idx_locDatabase))};
            
                % Get the coordinates associated with this location
                coords = {unique(LocationDatabase{idx_locDatabase,{'LAT','LON'}},'rows')};    
            
                % Find cells in the POPGRID from this location
                idx_PopGrid = all(obj.POPULATED_GRID.Geographies == location,2);
                if sum(idx_PopGrid)<1
                    msg = sprintf('possible error in geography data, location not found in populated grid');
                    warning(msg);
                end
            
                % Add zip codes to the POPULATED GRID
                obj.POPULATED_GRID.ZipCodes(idx_PopGrid) = zips;
            
                % Add coordinates to the POPULATED GRID
                obj.POPULATED_GRID.Coordinates(idx_PopGrid) = coords;
            
            end
            
            
            % Close waitbar
            close(f)


        end

        function ResultsTab = checkPopGrid(obj)
            %
            %
            %
            %
            %
            %
            % -------------------------------------------------------------

            % Get Variables to Check
            GRDvars = sort(obj.POPULATED_GRID.Properties.VariableNames);
            
            % Initialize
            rvn = {'GridVariable','OBShasVar','OBShasNaNs','VardataLookOK'};
            rvt = {'string','logical','logical','logical'};
            ResultsTab = table('size',[length(GRDvars),length(rvn)],...
                'VariableNames',rvn,'VariableTypes',rvt);
            ResultsTab.GridVariable = GRDvars';
            ResultsTab.Properties.RowNames = GRDvars';

            % Check that the OBS observations are appropriately aligned
            % with the POPGRID
            OBSvars = obj.OBS.Properties.VariableNames;
            for v = 1:length(GRDvars)
                varn = GRDvars{v};
                ResultsTab.OBShasVar(v) = ismember(varn,OBSvars);
            end



        end

    end
end