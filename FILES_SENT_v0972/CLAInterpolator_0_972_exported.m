classdef CLAInterpolator_0_972_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        CLAInterpolatorUIFigure         matlab.ui.Figure
        ExportMenu                      matlab.ui.container.Menu
        Menu_ExportGridtotxt            matlab.ui.container.Menu
        Menu_ExportObsDatatotxt         matlab.ui.container.Menu
        Menu_ExportPortfoliototxt       matlab.ui.container.Menu
        GridLayout                      matlab.ui.container.GridLayout
        TabGroup                        matlab.ui.container.TabGroup
        DATATab                         matlab.ui.container.Tab
        GridLayout17                    matlab.ui.container.GridLayout
        TextArea_DataNotes              matlab.ui.control.TextArea
        LOADDATAPanel                   matlab.ui.container.Panel
        GridLayout18                    matlab.ui.container.GridLayout
        ButtonGroup_SwapFixedto         matlab.ui.container.ButtonGroup
        Button_Swap2LIBOR               matlab.ui.control.ToggleButton
        Button_Swap2SOFR                matlab.ui.control.ToggleButton
        GridLayout36                    matlab.ui.container.GridLayout
        Button                          matlab.ui.control.Button
        FilterOutaBankDropDown          matlab.ui.control.DropDown
        FilterOutaBankDropDownLabel     matlab.ui.control.Label
        Button_UpdateUSTdata            matlab.ui.control.Button
        Button_LoadPortfolio            matlab.ui.control.Button
        CheckDataButton                 matlab.ui.control.Button
        UITable_LoadedDates             matlab.ui.control.Table
        Label_ObservationData           matlab.ui.control.Label
        Button_UpdateData               matlab.ui.control.Button
        GRIDTab                         matlab.ui.container.Tab
        GridLayout5                     matlab.ui.container.GridLayout
        TabGroup2                       matlab.ui.container.TabGroup
        GridBuilderTab                  matlab.ui.container.Tab
        GridLayout29                    matlab.ui.container.GridLayout
        TextArea_PricingGridInstructions  matlab.ui.control.TextArea
        CUSTOMIZEAPRICINGGRIDLabel      matlab.ui.control.Label
        Tab_FacilityInformation         matlab.ui.container.Tab
        GridLayout19                    matlab.ui.container.GridLayout
        OtherInformationPanel           matlab.ui.container.Panel
        GridLayout24                    matlab.ui.container.GridLayout
        ButtonGroup_Index               matlab.ui.container.ButtonGroup
        Button_LIBOR                    matlab.ui.control.RadioButton
        Button_SOFR                     matlab.ui.control.RadioButton
        Button_Prime                    matlab.ui.control.RadioButton
        Button_FixedRate                matlab.ui.control.RadioButton
        Tree_FacilityType               matlab.ui.container.CheckBoxTree
        RevolvingNode                   matlab.ui.container.TreeNode
        NonRevolvingNode                matlab.ui.container.TreeNode
        Tree_NewRenew                   matlab.ui.container.CheckBoxTree
        Node_NewOriginations            matlab.ui.container.TreeNode
        Node_Renewals                   matlab.ui.container.TreeNode
        TermPanel                       matlab.ui.container.Panel
        GridLayout10                    matlab.ui.container.GridLayout
        EditField_MaxTerm               matlab.ui.control.EditField
        MinLoanSizeMMLabel_5            matlab.ui.control.Label
        EditField_MinTerm               matlab.ui.control.EditField
        MinLoanSizeMMLabel_4            matlab.ui.control.Label
        EditField_TermGroups            matlab.ui.control.EditField
        TermMonthGroupsLabel            matlab.ui.control.Label
        Label_4                         matlab.ui.control.Label
        RiskCategoriesPanel             matlab.ui.container.Panel
        GridLayout9                     matlab.ui.container.GridLayout
        EditField_MaxRiskNum            matlab.ui.control.EditField
        MinLoanSizeMMLabel_3            matlab.ui.control.Label
        EditField_MinRiskNum            matlab.ui.control.EditField
        MinLoanSizeMMLabel_2            matlab.ui.control.Label
        EditField_RiskCategoryGroups    matlab.ui.control.EditField
        RiskCategoryGroupsEditFieldLabel  matlab.ui.control.Label
        Label_3                         matlab.ui.control.Label
        LoanSizeCommitmentPanel         matlab.ui.container.Panel
        GridLayout7                     matlab.ui.container.GridLayout
        EditField_MaxLoanSize           matlab.ui.control.EditField
        MaxLoanSizeMMEditFieldLabel     matlab.ui.control.Label
        EditField_MinLoanSize           matlab.ui.control.EditField
        MinLoanSizeMMLabel              matlab.ui.control.Label
        SelectoneormorefacilitytypestobeincludedinthepricinggridLabel_2  matlab.ui.control.Label
        EditField_LoanSizeGroups        matlab.ui.control.EditField
        LoanSizeGroupsLabel             matlab.ui.control.Label
        CollateralTab                   matlab.ui.container.Tab
        GridLayout20                    matlab.ui.container.GridLayout
        CollateralTypeSecurityInterestPanel  matlab.ui.container.Panel
        GridLayout11                    matlab.ui.container.GridLayout
        Button_DelFromCollateralGroup   matlab.ui.control.Button
        Label_7                         matlab.ui.control.Label
        Label_6                         matlab.ui.control.Label
        Tree_CollateralTypes            matlab.ui.container.Tree
        Button_RemoveCollateral         matlab.ui.control.Button
        Button_AddToCollateralGroup     matlab.ui.control.Button
        Button_CreateCollateralGroup    matlab.ui.control.Button
        ListBox_CollateralTypes         matlab.ui.control.ListBox
        Label_5                         matlab.ui.control.Label
        IndustryTab                     matlab.ui.container.Tab
        GridLayout21                    matlab.ui.container.GridLayout
        IndustryPanel                   matlab.ui.container.Panel
        GridLayout13                    matlab.ui.container.GridLayout
        ListBox_UnincludedIndustries    matlab.ui.control.ListBox
        Button_RemoveIndustryGroup      matlab.ui.control.Button
        Button_DelFromIndustryGroup     matlab.ui.control.Button
        Button_AddToIndustryGroup       matlab.ui.control.Button
        Button_CreateIndustryGroup      matlab.ui.control.Button
        Label_IndustryGroupsIncluded    matlab.ui.control.Label
        Label_UnincludedIndustries      matlab.ui.control.Label
        Tree_Industries                 matlab.ui.container.Tree
        Label_8                         matlab.ui.control.Label
        GeographyTab                    matlab.ui.container.Tab
        GridLayout22                    matlab.ui.container.GridLayout
        GeographyPanel                  matlab.ui.container.Panel
        GridLayout14                    matlab.ui.container.GridLayout
        Button_GeoUrbRur                matlab.ui.control.StateButton
        Button_GeoMSA                   matlab.ui.control.StateButton
        Button_Region                   matlab.ui.control.StateButton
        Button_FEDBranch                matlab.ui.control.StateButton
        Button_GeoUndo                  matlab.ui.control.Button
        Button_GeoBuild                 matlab.ui.control.Button
        Button_GeoState                 matlab.ui.control.StateButton
        SelectgeographiestobeincludedinthepricinggridLabel  matlab.ui.control.Label
        Tree_Geography                  matlab.ui.container.CheckBoxTree
        GridLayout16                    matlab.ui.container.GridLayout
        Button_BuildGrid                matlab.ui.control.Button
        Button_SaveGrid                 matlab.ui.control.Button
        Button_SetDefaultGrid           matlab.ui.control.Button
        CALCULATEDISTANCESTab           matlab.ui.container.Tab
        GridLayout25                    matlab.ui.container.GridLayout
        Panel_MyProgBarBack             matlab.ui.container.Panel
        Label_MyProgBarText             matlab.ui.control.Label
        Label_MyProgBar_Front           matlab.ui.control.Label
        DISTANCECALCULATIONPanel        matlab.ui.container.Panel
        GridLayout26                    matlab.ui.container.GridLayout
        Lamp_IndividualDistancesCalculated  matlab.ui.control.Lamp
        UnpopulatedGRIDreadytoaddcaclulateddistancesLabel_2  matlab.ui.control.Label
        Button_CalculateDistances       matlab.ui.control.Button
        Lamp_LoadedUnpopulatedGrid      matlab.ui.control.Lamp
        UnpopulatedGRIDreadytoaddcaclulateddistancesLabel  matlab.ui.control.Label
        Button_Build_PopGrid            matlab.ui.control.Button
        Lamp_LoadedGRID                 matlab.ui.control.Lamp
        GRIDisloadedLabel               matlab.ui.control.Label
        Lamp_LoadedDataBase             matlab.ui.control.Lamp
        CLA_DBdatabaseisloadedLabel     matlab.ui.control.Label
        Button_RunChecks                matlab.ui.control.Button
        TextArea_InterpNotes            matlab.ui.control.TextArea
        CALCULATEPRICESTab              matlab.ui.container.Tab
        TabGroup3                       matlab.ui.container.TabGroup
        DimensionWeightsTab             matlab.ui.container.Tab
        GridLayout31                    matlab.ui.container.GridLayout
        Button_CalculateGowerDistance   matlab.ui.control.Button
        Button_SetDimensionWeights      matlab.ui.control.Button
        EditField_Lag                   matlab.ui.control.NumericEditField
        EditField_8Label                matlab.ui.control.Label
        EditField_Industry              matlab.ui.control.NumericEditField
        EditField_7Label                matlab.ui.control.Label
        EditField_FacilityType          matlab.ui.control.NumericEditField
        FACILITYTYPEFacilityTypemayberevolvingornonrevolvingLabel  matlab.ui.control.Label
        EditField_Size                  matlab.ui.control.NumericEditField
        FACILITYSIZEDeterminedbytheCommitmentamountLabel  matlab.ui.control.Label
        EditField_Term                  matlab.ui.control.NumericEditField
        TermEditFieldLabel              matlab.ui.control.Label
        EditField_Geography             matlab.ui.control.NumericEditField
        GeographyasdefinedinthegridEditFieldLabel  matlab.ui.control.Label
        EditField_Collateral            matlab.ui.control.NumericEditField
        COLLATERALsecurityLabel         matlab.ui.control.Label
        EditField_Risk                  matlab.ui.control.NumericEditField
        ProbabilityofDefaultRiskEditFieldLabel  matlab.ui.control.Label
        TextArea_DimensionWts           matlab.ui.control.TextArea
        SmoothingParametersTab          matlab.ui.container.Tab
        GridLayout30                    matlab.ui.container.GridLayout
        Button_SetSmoothParams          matlab.ui.control.Button
        EditField_DistWtFact_Test       matlab.ui.control.NumericEditField
        TESTWeightFactorLabel           matlab.ui.control.Label
        TextArea_3                      matlab.ui.control.TextArea
        EditField_ConfFactorDistWt_TEST  matlab.ui.control.NumericEditField
        TESTweightondistanceEditFieldLabel  matlab.ui.control.Label
        TextArea_2                      matlab.ui.control.TextArea
        NewDWFSlider                    matlab.ui.control.Slider
        EditField_StartDistThresh_Test  matlab.ui.control.NumericEditField
        TESTinitialthresholdLabel       matlab.ui.control.Label
        EditField_MinReqPoints_Test     matlab.ui.control.NumericEditField
        TESTminrequirednumberofpointsLabel  matlab.ui.control.Label
        TextArea                        matlab.ui.control.TextArea
        AdjusttheSmoothingZoomParametersLabel  matlab.ui.control.Label
        UIAxes_DistWeights              matlab.ui.control.UIAxes
        NearbyPointAnalysisTab          matlab.ui.container.Tab
        GridLayout32                    matlab.ui.container.GridLayout
        GridLayout35                    matlab.ui.container.GridLayout
        EditField_numpts                matlab.ui.control.NumericEditField
        numptsEditFieldLabel            matlab.ui.control.Label
        EditField_SpreadSelected        matlab.ui.control.NumericEditField
        SpreadLabel                     matlab.ui.control.Label
        EditField_ConfidenceScore       matlab.ui.control.EditField
        ConfidenceScoreLabel            matlab.ui.control.Label
        EditField_WtgAvgDistSelected    matlab.ui.control.NumericEditField
        WtdAverageDistanceLabel         matlab.ui.control.Label
        GridLayout_NBPTable             matlab.ui.container.GridLayout
        Label_NBPTab08_4                matlab.ui.control.Label
        Label_NBPTab08_3                matlab.ui.control.Label
        Label_NBPTab08_2                matlab.ui.control.Label
        Label_NBPTab08                  matlab.ui.control.Label
        Label_NBPTab07                  matlab.ui.control.Label
        Label_NBPTab06                  matlab.ui.control.Label
        Label_NBPTab05                  matlab.ui.control.Label
        Label_NBPTab04                  matlab.ui.control.Label
        Label_NBPTab03                  matlab.ui.control.Label
        Label_NBPTab02                  matlab.ui.control.Label
        Label_NBPTab01                  matlab.ui.control.Label
        Panel_MapButtons                matlab.ui.container.Panel
        GridLayout33                    matlab.ui.container.GridLayout
        Label_FacilityTypeDropDown      matlab.ui.control.Label
        Label_IndustryDropDown          matlab.ui.control.Label
        Label_TermDropDown              matlab.ui.control.Label
        Label_SizeDropDown              matlab.ui.control.Label
        Label_CollateralDropDown        matlab.ui.control.Label
        Label_RiskDropDown              matlab.ui.control.Label
        DropDown_FacilityType           matlab.ui.control.DropDown
        DropDown_Industry               matlab.ui.control.DropDown
        DropDown_Term                   matlab.ui.control.DropDown
        DropDown_Size                   matlab.ui.control.DropDown
        DropDown_Collateral             matlab.ui.control.DropDown
        DropDown_Risk                   matlab.ui.control.DropDown
        Button_MapPrices                matlab.ui.control.Button
        Panel_Map                       matlab.ui.container.Panel
        Lamp_POPGridOKForPricing        matlab.ui.control.Lamp
        GridCheckLabel                  matlab.ui.control.Label
        Lamp_ParamsOKforPriceRun        matlab.ui.control.Lamp
        DataCheckLabel                  matlab.ui.control.Label
        TextArea_NearbyPointNotes       matlab.ui.control.TextArea
        Button_CalculatePrices          matlab.ui.control.Button
        Button_PreRunChecks             matlab.ui.control.Button
        UITable_NearbyPoints            matlab.ui.control.Table
        GridLayout3                     matlab.ui.container.GridLayout
        DevelopedforLabel               matlab.ui.control.Label
        Image9                          matlab.ui.control.Image
        DevelopedbyMassachusettsAnalyticsLabel  matlab.ui.control.Label
        Image2                          matlab.ui.control.Image
        GridLayout2                     matlab.ui.container.GridLayout
        GridLayout27                    matlab.ui.container.GridLayout
        Label_DRAFT                     matlab.ui.control.Label
        Label_Version                   matlab.ui.control.Label
        Image                           matlab.ui.control.Image
        PricingGridInterpolatorVisualizationAdjustmentToolLabel  matlab.ui.control.Label
    end

    
    properties (Access = private)
        DATA            % DATA.mat file holding data and other settings
        GRID            % Description
        POPGRID         % Description
        POPGRID_display % Description
        MAP             %
        Cmap            % Description
        DistWtLine      % Description
        SwapTo          % Either "SOFR" (default) if we are swapping fixed 
                        % rates to SOFR or LIBOR if we are swapping fixed 
                        % rates to LIBOR
    end
    
    properties (Access = public)
        tempdata    % temporary data passed from functions etc.
        SETTINGS    % property holding the location of the DATA.mat file 
                    % and other information
    end
    
    methods (Access = private)
        
        function displayAvailableProcDates(app)
            % displayAvailableProcDates
            % 
            % an internal function that lists the available data (loaded in
            % the startup function) into the app.DATA property. The dates
            % of data available are displayed in the table:
            %
            % app.UITable_LOadedDates
            %
            %

            % DISPLAY AVAILABLE PROC DATES
            if isfield(app.DATA,'CLA_DB')
                FileDateTab = fileDatesTab(app.DATA.CLA_DB);
                app.UITable_LoadedDates.Data = FileDateTab(:,{'FileDates'});
            end

            
        end
        
        function securityResults = securityCheck(app)
            % Run security check
            %
            %
            %
            %
            % -------------------------------------------------------------

            securityResults = 1;
            
        end
        
        function setReqGridButtons(app)
            % setReqGridButtons
            %
            % is an internal function that initializes the Required Grid
            % Buttons and values.  Sets initial values/appearance of the
            % buttons and other features of the Grid/Portfolio Tab
            %
            %


            % NEW OR RENEWAL TREE
            % -------------------------------------------------------------
            % Clear out the exising origination type nodes
            app.Tree_NewRenew.CheckedNodes = [];


            % GEOGRAPHY
            % we display a tree with checkboxes, so that users can identify
            % the geographies that they want to include in the pricing
            % grid. There is no way to create different groups (because you
            % can't move Massachusetts to the West Coast)
            % -------------------------------------------------------------

            % User can define the level of geography that he wants, we
            % always start with at least the US.
            parent0 = app.Tree_Geography;
            regname = "U.S.";
            lev0 = uitreenode(parent0,'Text',regname);


            % LOAN SIZE RANGE AND GROUPS
            % -------------------------------------------------------------
            % We find the range of commitment sizes in the data set (after
            % excluding certain facilities).  The available range is then
            % displayed in the range slider for the user to limit as
            % desired.
            app.EditField_MinLoanSize.Value = "0";
            app.EditField_MaxLoanSize.Value = "100";
            app.EditField_LoanSizeGroups.Value = "20,60";

            % RISK NUMBER RANGE AND GROUPS
            % -------------------------------------------------------------
            % Risk numbers are ingegers ranging from 1 to 12.
            app.EditField_MinRiskNum.Value = "1";
            app.EditField_MaxRiskNum.Value = "12";
            app.EditField_RiskCategoryGroups.Value = "3,9";

            % TERM LENGTH RANGE AND GROUPS
            % -------------------------------------------------------------
            app.EditField_MinTerm.Value = "12";
            app.EditField_MaxTerm.Value = "120";
            app.EditField_TermGroups.Value = "36,84";

            % RATE/INDEX Type
            % -------------------------------------------------------------
            % Default to prime
            app.ButtonGroup_Index.SelectedObject = app.Button_Prime;


            % REVOLVING/TERM Type
            % -------------------------------------------------------------
            % Default to including both in the grid
            app.Tree_FacilityType.CheckedNodes = app.Tree_FacilityType.Children;


            % NEW/RENEWAL Type
            % -------------------------------------------------------------
            app.Tree_NewRenew.CheckedNodes = app.Node_NewOriginations;
            
            % SECURITY/COLLATERAL TYPE TREE
            % -------------------------------------------------------------
            ctypes = app.DATA.CLA_DB.TaxonomyTabs.Collateral_Type.Collateral_Type_Name;
            ctypeNums = app.DATA.CLA_DB.TaxonomyTabs.Collateral_Type.Collateral_Type;
            for c = 1:length(ctypes)

                % Set the parent tree node
                parent = app.Tree_CollateralTypes;

                % Get the name of the current collateral types
                ctypen = string(ctypes(c));
                ctypenum = num2str(ctypeNums(c));
                ctypenwnum = strcat(ctypen,"_",ctypenum);

                % Depending on the collateral type take different action
                if strcmpi(ctypen,'Unsecured')

                    % Add Weakest_Unsecured collateral category
                    ch = uitreenode(parent,'Text','Weakest/Unsecured');
                    ch = uitreenode(ch,'Text',ctypenwnum,'NodeData',ctypeNums(c));

                elseif strcmpi(ctypen, 'Other')

                    % Add Other collateral category
                    ch = uitreenode(parent,'Text','All Others');
                    ch = uitreenode(ch,'Text',ctypenwnum,'NodeData',ctypeNums(c));

                else

                    % Otherwise add to the list box
                    app.ListBox_CollateralTypes.Items = [app.ListBox_CollateralTypes.Items,ctypenwnum];
                    app.ListBox_CollateralTypes.ItemsData = [app.ListBox_CollateralTypes.ItemsData,ctypenwnum];
                    

                end
            end
            clearvars c parent ctypen ch
            drawnow

            % INDUSTRY GROUPS AVIALABLE
            % -------------------------------------------------------------
            [~,Industries] = defIndustryTab();
            industries = Industries.IndustryNAICS2;
            app.ListBox_UnincludedIndustries.Items = industries;



            
        end
        
        function inputStructure = getInputGrid(app)

            %
            % get the inputs from the Pricing Grid Builder
            %
            %
            %
            % -------------------------------------------------------------

            % Initialize the output structure
            inputStructure = struct();

            % LOAN SIZE
            % -------------------------------------------------------------
            editfield = (app.EditField_LoanSizeGroups);
            minval = string(regexp(app.EditField_MinLoanSize.Value,'\d*','Match'));
            maxval = string(regexp(app.EditField_MaxLoanSize.Value,'\d*','Match'));
            
            % Get the splits (numerals only)
            splits = string(regexp(editfield.Value,'\d*','Match'));

            % tack on the range to get the full set of splits (numerical)
            inputStructure.LoanSize.min = str2double(minval);
            inputStructure.LoanSize.max = str2double(maxval);
            inputStructure.LoanSize.groups = str2double(splits);
            clearvars editfield splits minval maxval


            % RISK (PROB OF DEFAULT) GROUPS
            % -------------------------------------------------------------
            % Set the edit field (text field listing the internal splits)
            % and the rangeslider (slider setting the full range) field
            % names.
            editfield = (app.EditField_RiskCategoryGroups);
            minval = string(regexp(app.EditField_MinRiskNum.Value,'\d*','Match'));
            maxval = string(regexp(app.EditField_MaxRiskNum.Value,'\d*','Match'));

            % Get the splits (numerals only)
            splits = string(regexp(editfield.Value,'\d*','Match'));

            % tack on the range to get the full set of splits (numerical)
            inputStructure.PDRisk.min = str2double(minval);
            inputStructure.PDRisk.max = str2double(maxval);
            inputStructure.PDRisk.groups = str2double(splits);
            clearvars editfield splits minval maxval


            % TERM GROUPS
            % -------------------------------------------------------------
            % Set the edit field (text field listing the internal splits)
            % and the rangeslider (slider setting the full range) field
            % names.
            editfield = (app.EditField_TermGroups);
            minval = string(regexp(app.EditField_MinTerm.Value,'\d*','Match'));
            maxval = string(regexp(app.EditField_MaxTerm.Value,'\d*','Match'));
            
            % Get the splits (numerals only)
            splits = string(regexp(editfield.Value,'\d*','Match'));

            % tack on the range to get the full set of splits (numerical)
            inputStructure.Term.min = str2double(minval);
            inputStructure.Term.max = str2double(maxval);
            inputStructure.Term.groups = str2double(splits);
            clearvars editfield splits minval maxval


            % COLLATERAL TYPE GROUPS
            % -------------------------------------------------------------
            % Set the tree from which to grab the structure.  Get the
            % children and find out how many children there are.
            tre = app.Tree_CollateralTypes;
            cs = tre.Children;
            nc = size(cs,1);

            % Initialize the output structure
            collateral_groups = struct();

            % Loop through the structure
            for n = 1:nc

                % Get the name of the collateral group
                c = cs(n);
                grouptext = c.Text;
                groupname = CLAlegalizeIt(grouptext);
                collateral_groups.(groupname).text = grouptext;

                % Get the collateral types within the group
                ctypes = c.Children;
                nctypes = size(ctypes,1);

                % Loop through and add each of the collateral types
                for t = 1:nctypes

                    type = ctypes(t);
                    typetext = type.Text;
                    typename = CLAlegalizeIt(typetext);
                    collateral_groups.(groupname).(typename).text = typetext;
                    idx = app.DATA.CLA_DB.TaxonomyTabs.SPCollateralType.SPCollateralType == typetext;
                    collateral_groups.(groupname).(typename).SPCollateralType_IDX = ...
                        app.DATA.CLA_DB.TaxonomyTabs.SPCollateralType.SPCollateralType_IDX(idx);

                end
                

            end

            % Get any Unasigned Collateral Groups
            % 

            % Return the Collateral Group Structure
            inputStructure.Collateral = collateral_groups;


            % INDUSTRY GROUPS
            % -------------------------------------------------------------
            % Set the tree from which to grab the structure.  Get the


            % RATE TYPE/INDEX
            % -------------------------------------------------------------
            % What rate or index was selected by the user. Can be either
            % LIBOR, SOFR, Prime, or Fixed Rate
            ratetypes = str2double(...
                strsplit(...
                string(app.ButtonGroup_RateIndexType.SelectedObject.Tag),","));
            inputStructure.RateTypes = ratetypes;

            % FACILITY TYPE
            % -------------------------------------------------------------
            % Revolving Line or Term Loan
            numfactypes = size(app.Tree_FacilityType.CheckedNodes,1);
            inputStructure.FacTypes = NaN(numfactypes,1);
            for t = 1:numfactypes
                inputStructure.FacTypes(t) = app.Tree_FacilityType.CheckedNodes(t).UserData;
            end
            
            clearvars numfactypes t

            % NEW OR RENEWAL
            % -------------------------------------------------------------
            % New Loan or renewal
            numtypes = size(app.Tree_NewOrRenew.CheckedNodes,1);
            inputStructure.NewOrRenew = NaN(numtypes,1);
            for t = 1:numtypes
                inputStructure.NewOrRenew(t) = app.Tree_NewOrRenew.CheckedNodes(t).UserData;
            end

            clearvars numtypes t


            % CREATE THE CLAgrid CLASS OBJECT
            % =============================================================

            
            



            

        end
        
        function [] = grid_createGroup(app,grpname,ListBoxtoUse,TreeToAddTo)
            % grid_createGroup
            % Grid building function, called by group buttons. builds group
            % of classifications pulling from ListBoxtoUse and adding a
            % group to TreeToAddTo.
            % -------------------------------------------------------------

            % Legalize the entered grpname
            grpname_legal = CLAlegalizeIt(grpname);

            % Add new node with the provided groupname
            parent = TreeToAddTo;
            tn = uitreenode(parent,"Text",grpname_legal);

            % Get the list of selected collateral types
            sels_idx = ListBoxtoUse.ValueIndex;
            sels_data = ListBoxtoUse.Value;
            sels_names = ListBoxtoUse.Items(sels_idx);

            % Add new child nodes within the newly created parent node for
            % each of the selected collateral types
            for c = 1:length(sels_data)

                % Add the child node
                cn = uitreenode(tn,"Text",sels_names{c},"NodeData",sels_data(c));

            end
            
            % Remove the collateral groups from the listbox
            ListBoxtoUse.Items(sels_idx) = [];

            % Deselect collateral types
            TreeToAddTo.SelectedNodes = TreeToAddTo.Children(1);

        end
        
        function [] = grid_add2Group(app,ListBoxtoUse,TreeToAddTo,varargin)
            % grid_add2Group
            % Grid building function, called by group buttons.
            %
            % varargin = optional argument for selected group to add to (if
            % we're not using the selected group).
            %
            % -------------------------------------------------------------

            % If we have included a selected group argument (varargin) then
            % we use the first input as the selected group. otherwise we 
            % see which group is selectd and use that one.  The second
            % input argument is the index of collateral types to add
            % (collatTypes_idx).
            if ~isempty(varargin)
                parentGroup = varargin{1};
            else
                parentGroup = TreeToAddTo.SelectedNodes;
            end

            % Get the selected group (should be the parent) and
            % ensure that the user has selected a collateral group, not
            % just a single collateral type
            
            if isempty(parentGroup)
                msg = sprintf('You need to select a collateral group to add to.  Please select a collateral group and try again.');
                uialert(app.CLAInterpolatorUIFigure,msg,"SELECTION ERROR","Icon","AppImages\MAIcon.png");
                return
            end

            granddadGroupClass = class(TreeToAddTo.SelectedNodes.Parent);
            if strcmpi(granddadGroupClass,"matlab.ui.container.TreeNode")
                msg = sprintf('You seem to have selected a collateral type rather than a group.  Please select a collateral group (one level higher).');
                uialert(app.CLAInterpolatorUIFigure,msg,"SELECTION ERROR","Icon","AppImages\MAIcon.png");
                return
            end

            % Get the collateral types to add
            collatTypes_idx = ListBoxtoUse.ValueIndex;
            if ~any(collatTypes_idx)
                msg = sprintf('You have not selected any collateral types to add');
                uialert(app.CLAInterpolatorUIFigure,msg,"SELECTION ERROR","Icon","AppImages\MAIcon.png");
                return
            end
            collatTypes_names = ListBoxtoUse.Items(collatTypes_idx);
            collatTypes_nums = ListBoxtoUse.Value;

            % Add the collateral types to the collateral group
            for c = 1:length(collatTypes_names)

                tn = uitreenode(parentGroup,...
                    "Text",collatTypes_names{c},...
                    "NodeData",collatTypes_nums(c));
            end

            % Remove the collateral groups from the listbox
            ListBoxtoUse.Items(collatTypes_idx) = [];

            
        end
        
        function [] = grid_deleteFromGroup(app,ListBoxtoUse,TreeToDelFrom)
            % grid_deleteFromGroup
            % Grid building function, called by group buttons. 
            % -------------------------------------------------------------

            % Get the selected collateral group (should be the parent) and
            % ensure that the user has selected a collateral group, not
            % just a single collateral type
            selectedCollateral = TreeToDelFrom.SelectedNodes;
            if isempty(selectedCollateral)
                msg = sprintf('You need to select a collateral/industry to remove.  Please select a group and try again.');
                uialert(app.CLAInterpolatorUIFigure,msg,"SELECTION ERROR","Icon","AppImages\MAIcon.png");
                return
            end

            % If the selected collateral is a group (in other words it's
            % parent is the tree, not another tree node), then tell the
            % user he has to select a specific type not a group
            if ~strcmpi(class(selectedCollateral.Parent),"matlab.ui.container.TreeNode")
                msg = sprintf('It looks like you have selected a collateral group, not individual type.  Please select a specific collateral type and try again.');
                uialert(app.CLAInterpolatorUIFigure,msg,"SELECTION ERROR","Icon","AppImages\MAIcon.png");
                return
            end

            % Add the removed collateral type back to the full list of
            % available collateral types.
            newList = sort([ListBoxtoUse.Items,string(selectedCollateral.Text)]);
            ListBoxtoUse.Items = newList;
            ListBoxtoUse.ItemsData = newList;
            drawnow

            % Remove the collateral type from the group
            delete(TreeToDelFrom.SelectedNodes)

            
        end
        
        
        function [addedNodes,addedVarName] = grid_addGeoLevel(app,...
                parents,parentVarName,childVarName)
            %
            %
            %
            % -------------------------------------------------------------

            addedNodes = {};
            addedVarName = childVarName;
            nParents = size(parents,2);

            % Get the location database
            L_all = app.DATA.CLA_DB.TaxonomyTabs.LocationDatabase;
                     
            if isempty(parentVarName)
                
                % if we are at the top level (adding to National), delete 
                % any existing children from the parent
                existingChildren = parents.Children;
                existingChildren.delete

                % if we are at the top level, the only parent is the single
                % parent (U.S.)
                parent = parents;

                % Get the location database
                L = app.DATA.CLA_DB.TaxonomyTabs.LocationDatabase;
                nodenames = unique(L.(childVarName));

                for n = 1:length(nodenames)
                    nodename = string(nodenames(n));
                    addedNodes{n} = uitreenode(parent,...
                        'Text',nodename,...
                        'Tag',childVarName,...
                        'UserData',nodename);
                end
            
            else
                % if a multiple parents were provided, we loop through
                % each of them and add the subnodes accordingly
                counter = 0;
                for n = 1:nParents
                
                    % Get the individual parent
                    p = parents{n};
                    parenttext = p.UserData;

                    % Get grandparent
                    g = p.Parent;
                    gpVarName = g.Tag;

                    % Remove any children from that parent
                    existingChildren = p.Children;
                    existingChildren.delete

                    % Get the location database limited to the current
                    % parent location
                    % Grandparent level (we need to do this because if we
                    % have urban/rural at the parent level, since there are
                    % urban/rural for all states, regions, etc., we end up
                    % getting too many locations, we need to limit it to
                    % the specific urban/rural areas).
                    if ~isempty(gpVarName)
                        idx_Loc_g = L_all.(gpVarName) == g.Text;
                    else
                        idx_Loc_g = true(size(L_all,1),1);
                    end
                    idx_Loc_p = L_all.(parentVarName) == p.Text;
                    idx_Loc = and(idx_Loc_g,idx_Loc_p);
                    L_loc = L_all(idx_Loc,:);

                    % Get the full list of sub-locations within the current
                    % parent location.
                    locations_sub = unique(L_loc.(childVarName));
                    nsublocs = length(locations_sub);

                    % Loop through each of the sublocations and add a sub
                    % node for each sublocation

                    for m = 1:nsublocs
                        counter = counter + 1; 
                        subloc = locations_sub(m);
                        addedNodes{counter} = uitreenode(p,...
                            'Text',string(subloc),...
                            'Tag',childVarName,...
                            'UserData',strcat(parenttext,"_",string(subloc)));
                    end
                end
            end
        end
        
        function [fn_L,fn_F,fn_B] = getFilePaths(app)
            %
            % Get the LOAN data, FACILITY data, and BORROWER data file
            % names and file paths from the user.
            %
            %
            %
            % -------------------------------------------------------------
            % Initialize file names and locations for error checking
            fn_L = 0;
            fn_F = 0;
            fn_B = 0;
            filen_L = 0;
            pathn_L = 0;
            filen_F = 0;
            pathn_F = 0;
            filen_B = 0;
            pathn_B = 0;

            % Set folder to search
            fldr = strcat(app.SETTINGS.settings.DATAFilePath,"\*.txt*");
            
            % Get the file names and locations for Loan Data, Facility Data
            % and Borrower Data.
            msg = sprintf(['Update observation data (LOAN DATA):\nFirst, select a ' ...
                'text file (.txt) with LOAN data from your file system.']);
            tit = sprintf('GET FILE TO LOAD');
            s = uiconfirm(app.CLAInterpolatorUIFigure,msg,tit,...
                "Icon","AppImages\Icon_01.png",...
                "Options",["OK"]);
            app.CLAInterpolatorUIFigure.WindowState = 'minimized';
            [filen_L,pathn_L] = uigetfile(fldr,"Select the LOAN Data File (.txt file)");
            if isnumeric(filen_L)
                [~] = uiconfirm(app.CLAInterpolatorUIFigure,"No file selected","NO FILE",...
                    'Icon','AppImages\Icon_01.png',...
                    'Options',{'OK'});
                return
            end
            app.CLAInterpolatorUIFigure.WindowState = 'normal';
            app.CLAInterpolatorUIFigure.WindowStyle = "alwaysontop";
            

            try
                fn_L = strcat(string(pathn_L), string(filen_L));
            end

            msg = sprintf(['Update observation data (FACILITIES DATA):\nSelect a ' ...
                'text file (.txt) with FACILITIES data from your file system.']);
            tit = sprintf('GET FILE TO LOAD');
            s = uiconfirm(app.CLAInterpolatorUIFigure,msg,tit,...
                "Icon","AppImages\Icon_01.png",...
                "Options",["OK"]);
            app.CLAInterpolatorUIFigure.WindowState = 'minimized';
            [filen_F,pathn_F] = uigetfile(fldr,"Select the FACILITY Data File (.txt file)");
            if isnumeric(filen_L)
                [~] = uiconfirm(app.CLAInterpolatorUIFigure,"No file selected","NO FILE",...
                    'Icon','AppImages\Icon_01.png',...
                    'Options',{'OK'});
                return
            end
            app.CLAInterpolatorUIFigure.WindowState = 'normal';
            app.CLAInterpolatorUIFigure.WindowStyle = "alwaysontop";
            try
                fn_F = strcat(string(pathn_F), string(filen_F));
            end


            msg = sprintf(['Update observation data (BORROWER DATA):\nSelect a ' ...
                'text file (.txt) with BORROWER data from your file system.']);
            tit = sprintf('GET FILE TO LOAD');
            s = uiconfirm(app.CLAInterpolatorUIFigure,msg,tit,...
                "Icon","AppImages\MAIcon.png",...
                "Options",["OK"]);
            app.CLAInterpolatorUIFigure.WindowState = 'minimized';
            [filen_B,pathn_B] = uigetfile(fldr,"Select the BORROWER Data File (.txt file)");
            if isnumeric(filen_L)
                [~] = uiconfirm(app.CLAInterpolatorUIFigure,"No file selected","NO FILE",...
                    'Icon','AppImages\Icon_01.png',...
                    'Options',{'OK'});
                return
            end
            app.CLAInterpolatorUIFigure.WindowState = 'normal';
            app.CLAInterpolatorUIFigure.WindowStyle = "alwaysontop";
            try
                fn_B = strcat(string(pathn_B), string(filen_B));
            end


        end
        
        function [hasAnything,haveTAXTAB,haveDB,haveMAP,returnedmsg] = loadDATAmat(app)
            %
            % load the DATA.mat and check for proper files
            %
            %
            %
            %
            % ---------------------------------------------------------
            % Initialize
            returnedmsg = "";
            haveTAXTAB = false;
            haveDB = false;
            haveMAP = false;
            hasAnything = false;
            
            % Load the DATA.mat file
            % If there is no DATA.mat file to load, we just throw a fatal error and
            % tell the user to get a DATA.mat file.
            datafile = strcat(app.SETTINGS.settings.DATAFilePath,"\DATA.mat");
            try
                DATAstruct = load(datafile);
            catch ME
                returnedmsg = sprintf(['Error running the startup function. Problem loading the ' ...
                    'DATA.mat file. The Interoplator requires a DATA.mat file with a ' ...
                    'properly constructed TAXONOMYTAB strucutre to run.\n']);
                return
            end
            
            
            % Set up the DataContents Table
            % We check to make sure that we have the bare minimum contents of the
            % DATA.mat file.  We need at least a TAXONOMYTABS structure. Without that
            % we can't run. Everthing else we can create.
            DATAContentsTab = rows2vars(...
                varfun(@(x) string(x),...
                struct2table(structfun(@(x) class(x),DATAstruct,'UniformOutput',false))...
                )...
                );
            
            % If there was nothing in the DATA.mat file, we throw an error
            if isempty(DATAContentsTab)
                returnedmsg = sprintf(['The DATA.mat file that was loaded in was empty or corrupted. ' ...
                    'The Interpolator requires a DATA.mat file with a ' ...
                    'properly constructed TAXONOMYTAB strucutre to run.\n']);
                return
            else
                hasAnything = true;
            end
            DATAContentsTab.Properties.VariableNames = {'ObjectName','ObjectClass'};
            DATAContentsTab.ObjectName = strrep(DATAContentsTab.ObjectName,"Fun_","");
            DATAContentsTab.IsaDB = strcmpi(DATAContentsTab.ObjectClass,"CLAdataBase");
            DATAContentsTab.IsaidMap = strcmpi(DATAContentsTab.ObjectClass,"CLAidMap");
            
            % Make Sure we Have a TAXONOMYTABS table at least
            % To run, the Interpolator needs a taxonomy table structure. This is
            % provided at the begining by Massachusetts Analytics and is not loaded or
            % constructed by the user (because the data structure is not allowed to
            % change).  If we don't have a TAXONOMY table structure, we exit.
            haveTAXTAB = false;
            for f = 1:size(DATAContentsTab,1)
            
                fld = DATAContentsTab.ObjectName(f);
                obj = DATAstruct.(char(fld));
                
                if isa(obj,"struct")
                    isTAXTAB = chkTAXTAB(obj);
            
                    % Once we find a TAXONOMYTAB we can stop looking
                    if isTAXTAB
                        app.DATA.TAXONOMYTABS = obj;
                        haveTAXTAB = true();
                        break
                    end
                end
            
            end
            
            % Check to see if we have a DB file
            % If we do not have a DB file, it is ok, the database can still run, we
            % just need to import data. Send a message to the user and tell him he
            % needs to import data.
            % If we do have a DB, we load it as the CLADB, if we have multiple DBs we
            % load the first one as the CLA_DB
            haveDB = any(DATAContentsTab.IsaDB);
            if haveDB
                idxDB = find(DATAContentsTab.IsaDB,1);
                CLA_DB_name = char(DATAContentsTab.ObjectName(idxDB));
                app.DATA.CLA_DB = DATAstruct.(CLA_DB_name);
            end
            
            % Check to see if we have an IDMAP file
            % If we do not have a idMap file, it is ok, the database can still run, we
            % just need to construct one out of imported data. Send a message to the 
            % user and tell him he needs to construct one.
            % If we do have a map, we load it as IDMAP, if we have multiple maps we
            % load the first one as the IDMAP
            haveMAP = any(DATAContentsTab.IsaidMap);
            if haveMAP
                idxMAP = find(DATAContentsTab.IsaidMap,1);
                IDMAP_name = char(DATAContentsTab.ObjectName(idxMAP));
                app.DATA.IDMAP = DATAstruct.(IDMAP_name);
            end

            % If we have any YearTreasury, add it to the app.DATA property
            if isfield(DATAstruct,'YearTreasury')
                app.DATA.YearTreasury = DATAstruct.YearTreasury;
            end




            
        end
        
        function greyLamps(app)
            %
            %
            %
            % -------------------------------------------------------------
            app.Lamp_LoadedDataBase.Color = [0.90 0.90 0.90];
            app.Lamp_LoadedGRID.Color = [0.90 0.90 0.90];
            app.Lamp_LoadedUnpopulatedGrid.Color = [0.90 0.90 0.90];
            app.Lamp_IndividualDistancesCalculated.Color = [0.90 0.90 0.90];
            app.Lamp_POPGridOKForPricing.Color = [0.90 0.90 0.90];
            app.Lamp_ParamsOKforPriceRun.Color = [0.90 0.90 0.90];

            app.Label_MyProgBarText.Text = "Ready.";
            app.Label_MyProgBar_Front.BackgroundColor = [0.90 0.90 0.90];
        end
        
        function [fn_S,fn_L] = getSwapDataFilePath(app)
            % 
            % Get the SWAP data file name and file path from the user.
            %
            %
            %
            % -------------------------------------------------------------          
            
            % Initialize file names and locations for error checking
            fn_S = 0;
            filen_S = 0;
            pathn_S = 0;

            fn_L = 0;
            filen_L = 0;
            pathn_L = 0;

            % Set folder to search
            fldr = strcat(app.SETTINGS.settings.DATAFilePath,"\*.xlsx*");
            
            % Get the file names and locations for Swap Data
            msg = sprintf(['Update swap data (SOFR DATA):\nFirst, select a ' ...
                'text file (.txt) with SOFR SWAP data from your file system.']);
            tit = sprintf('GET FILE TO LOAD');
            s = uiconfirm(app.CLAInterpolatorUIFigure,msg,tit,...
                "Icon","AppImages\Icon_01.png",...
                "Options",["OK"]);
            app.CLAInterpolatorUIFigure.WindowState = 'minimized';
            [filen_S,pathn_S] = uigetfile(fldr,"Select the SOFR SWAP Data File (.xlsx file)");
            app.CLAInterpolatorUIFigure.WindowState = 'normal';
            app.CLAInterpolatorUIFigure.WindowStyle = "alwaysontop";
            try
                fn_S = strcat(string(pathn_S), string(filen_S));
            end


            % Get the file names and locations for Swap Data
            msg = sprintf(['Update swap data (LIBOR DATA):\nFirst, select a ' ...
                'text file (.txt) with LIBOR SWAP data from your file system.']);
            tit = sprintf('GET FILE TO LOAD');
            s = uiconfirm(app.CLAInterpolatorUIFigure,msg,tit,...
                "Icon","AppImages\Icon_01.png",...
                "Options",["OK"]);
            app.CLAInterpolatorUIFigure.WindowState = 'minimized';
            [filen_L,pathn_L] = uigetfile(fldr,"Select the LIBOR SWAP Data File (.xlsx file)");
            app.CLAInterpolatorUIFigure.WindowState = 'normal';
            app.CLAInterpolatorUIFigure.WindowStyle = "alwaysontop";
            try
                fn_L = strcat(string(pathn_L), string(filen_L));
            end




            
        end
        
        function GRID2DropDowns(app)
            %
            %
            %
            %
            %
            %
            % -------------------------------------------------------------

            diagnostics = struct();

            % Risk
            field = 'RiskCategories';
            dropdown = 'DropDown_Risk';
            edges = [app.GRID.(field).Min, app.GRID.(field).Groups, app.GRID.(field).Max];
            nitems = length(edges)-1;
            itemnames = strings(nitems,1);
            itemdata = ones(nitems,1);
            for e = 1:nitems
                itemnames(e) = strcat(num2str(edges(e)), "to", num2str(edges(e+1)));
                itemdata(e) = e;
            end
            app.(dropdown).Items = itemnames;
            app.(dropdown).ItemsData = itemdata;


            % Size
            field = 'LoanSize';
            dropdown = 'DropDown_Size';
            edges = [app.GRID.(field).Min, app.GRID.(field).Groups, app.GRID.(field).Max];
            nitems = length(edges)-1;
            itemnames = strings(nitems,1);
            itemdata = ones(nitems,1);
            for e = 1:nitems
                itemnames(e) = strcat(num2str(edges(e)), "to", num2str(edges(e+1)));
                itemdata(e) = e;
            end
            app.(dropdown).Items = itemnames;
            app.(dropdown).ItemsData = itemdata;


            % TermCategories
            field = 'TermCategories';
            dropdown = 'DropDown_Term';
            edges = [app.GRID.(field).Min, app.GRID.(field).Groups, app.GRID.(field).Max];
            nitems = length(edges)-1;
            itemnames = strings(nitems,1);
            itemdata = ones(nitems,1);
            for e = 1:nitems
                itemnames(e) = strcat(num2str(edges(e)), "to", num2str(edges(e+1)));
                itemdata(e) = e;
            end
            app.(dropdown).Items = itemnames;
            app.(dropdown).ItemsData = itemdata;

            % Collateral
            itemnames = app.GRID.CollateralGroups.SecurityGroup;
            itemdata = app.GRID.CollateralGroups.SecGID;
            app.DropDown_Collateral.Items = itemnames;
            app.DropDown_Collateral.ItemsData = itemdata;

            % Industry
            itemnames = string(app.GRID.IndustryGroups.IndGrpName);
            itemdata = app.GRID.IndustryGroups.IndGrpID;
            app.DropDown_Industry.Items = itemnames;
            app.DropDown_Industry.ItemsData = itemdata;            

            % Facility Type
            itemnames = strcat("FacType ",string(app.GRID.FacilityType));
            itemdata = app.GRID.FacilityType;
            app.DropDown_FacilityType.Items = itemnames;
            app.DropDown_FacilityType.ItemsData = itemdata;  

            
        end
        
        function makeColorMap(app,spreadMAX,spreadMIN)
            %
            %
            %
            %
            %
            % ----------------------------------------------------------
           
            % Colorbar Series to Plot
            scatterY = [spreadMIN:spreadMAX]';
            scatterX = zeros(length(scatterY),1);
            
            % create spread series
            try
                c = [linspace(spreadMIN,spreadMAX,length(scatterY))]';
            catch ME
                disp(spreadMIN)
                disp(spreadMAX)
                rethrow(ME)
            end
            
            % COLORMAP
            % Create the Cmap Table
            cmapbase = jet;
            cmapshoe = interp1([0;1],[0 0 0.1;cmapbase(1,:)],linspace(0,1,10));
            cmaphat = interp1([0;1],[cmapbase(end,:);0.1 0 0],linspace(0,1,10));
            cmap = [cmapshoe;cmapbase; cmaphat];
            cmap = cmapbase;

            x = linspace(min(c),max(c),size(cmap,1));
            v = cmap;
            xq = c;
            R = interp1(x,v(:,1),xq);
            G = interp1(x,v(:,2),xq);
            B = interp1(x,v(:,3),xq);
            app.Cmap = [array2table(c,'VariableNames',{'SPR'}),...
                array2table([R,G,B],'VariableNames',{'R','G','B'})];             



            
        end
        
        function GeoAxesProperties(app)

            app.UIGEOAxes.HitTest = "on";
            app.UIGEOAxes.PickableParts = "all";
            app.UIGEOAxes.ButtonDownFcn = @clickGeo;

            function clickGeo(src,event)
                app.UIGEOAxes.MapCenterMode = 'manual';
                app.UIGEOAxes.MapCenter = app.UIGEOAxes.CurrentPoint(1,[1,2]);
                zoom(app.UIGEOAxes)
            end
            
        

            
        end
        
        function LoadSettings(app)
            % 
            % Function to load the SETTINGS property, which is the 
            % structure that is contained in the SETTINGS.mat file.
            %
            %
            %
            %

            % Find out if a SETTINGS.mat file exists. If SETTINGS exists,
            % the exist function will return a 2, otherwise it will return
            % a 0.
            setexist = exist("SETTINGS.mat","file");

            % IF settings doesn't exist, notify the user and create a
            % settings file.
            if setexist == 0
                tit = sprintf('NO SETTINGS FILE');
                msg = sprintf(['Your settings file cannot be found. This is ' ...
                    'probably because this is the first time that you are ' ...
                    'running the application.\n\nIf you would like to set up ' ...
                    'the application, click setup, otherwise click cancel.\n\nIf ' ...
                    'you click setup, you will be prompted for a file path at ' ...
                    'which to create the DATA.mat file. The DATA.mat file is ' ...
                    'the file holding any data stored by the application.\n\nIf ' ...
                    'you cancel, the application will be closed.']);
                answ = uiconfirm(app.CLAInterpolatorUIFigure,...
                    msg,tit,...
                    "Icon","AppImages\Icon_01.png",...
                    "Options",{'Setup','Cancel'});
    
                % if the user cancels, we close and exit the application
                if strcmpi(answ,"Cancel")
                    prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                        "Icon","AppImages\Icon_01.png",...
                        "Indeterminate","on",...
                        "Message","cancelling operation...");
                    pause(0.7)
                    close(prg)
                    delete(app)
                elseif strcmpi(answ,"Setup")
                    % If the user doesn't cancel, he clicks setup, prompt the
                    % user for a file location to put the DATA.mat file.
                    msg = sprintf(['You will next be prompted to select a file ' ...
                        'path for the newly created DATA.mat file. The DATA.mat file is ' ...
                        'the file holding any data stored by the application.']);
                    [~] = uiconfirm(app.CLAInterpolatorUIFigure,...
                        msg,tit,...
                        "Icon","AppImages\Icon_01.png",...
                        "Options",{'OK'});
                    dir = uigetdir(pwd,"SELECT DIRECTORY FOR THE DATA.mat FILE");
    
                    % Once you get the file, return the window to on top 
                    app.CLAInterpolatorUIFigure.WindowState = "normal";
                    app.CLAInterpolatorUIFigure.WindowStyle ="alwaysontop";
                    msg = sprintf(['Please confirm that you would like to add ' ...
                        'the DATA.mat file to the directory:\n%s'],dir);
                    tit = "SET DIRECTORY";
                    answ = uiconfirm(app.CLAInterpolatorUIFigure,...
                        msg,tit,...
                        "Icon","AppImages\Icon_01.png",...
                        "Options",{'OK','Cancel'});
                    if strcmpi(answ,"Cancel")
                        prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                            "Icon","AppImages\Icon_01.png",...
                            "Indeterminate","on",...
                            "Message","cancelling operation...");
                        pause(0.7)
                        close(prg)
                        delete(app)
                        return
                    end
    
                    % CREATE THE SETTINGS.mat FILE
                    % If user doesn't want to cancel, first create the 
                    % SETTINGS.mat file.
                    msg = sprintf('creating settings file...');
                    prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                        "Icon","AppImages\Icon_01.png",...
                        "Indeterminate","on",...
                        "Message",msg);
                    mkSettingsStruct('DATAFilePath',dir);
                    app.SETTINGS = load("SETTINGS.mat");
                    pause(0.5)
    
                    % CREATE DATA.mat FILE
                    % Once we have made the SETTINGS.mat file, we then create
                    % the DATA.mat file (in the path selected by the user). We
                    % also load the TAXONOMYTABS.mat file and store the
                    % TAXONOMYTABS structure in the TAXONOMYTABS.mat file. The
                    % DATA.mat file also needs an IDMAP object, so we create an
                    % empty one here and store it in the DATA.mat file
                    prg.Message = sprintf('creating DATA.mat file...');
                    t = load("TAXONOMYTABS.mat");
                    TAXONOMYTABS = t.TAXONOMYTABS;
                    filen = strcat(dir,"\DATA.mat");
                    save(filen,'TAXONOMYTABS');
                    pause(0.5)
                    prg.Message = sprintf('created.');
                    pause(0.25)
                    close(prg)
                end
            else
            % IF THE SETTINGS FILE *DOES* EXIST, JUST LOAD IT.
               prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                    "Icon","AppImages\Icon_01.png",...
                    "Indeterminate","on",...
                    "Message","loading settings...");
                pause(0.7)
                close(prg)
                app.SETTINGS = load("SETTINGS.mat");
                disp(app.SETTINGS)
            end

            
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            % startupFcn
            % STARTUP FUNCTION FOR THE INTERPOLATOR APP
            %
            % ---------------------------------------------------------
           
            % CLEAR
            % clear screen for trouble shooting ease
            clc

            % Display version
            verstext = strsplit(formattedDisplayText(app),{'CLAInterpolator_','<'});
            app.Label_Version.Text = strcat("Version: v", strrep(verstext(4),"_","."));
            drawnow

            % Set form Control
            app.CLAInterpolatorUIFigure.WindowStyle = "normal";
            app.CLAInterpolatorUIFigure.Resize = "off";

            % CHECK SECURITY
            securityResults = securityCheck(app);
            if securityResults ~= 1
                tit = "SIGN-IN FAILURE";
                msg = sprintf('Sign-in failure, contact your administrator.');
                s = uiconfirm(app.CLAInterpolatorUIFigure,msg,tit,...
                    "Icon","AppImages\MAIcon.png",...
                    "Options",["OK"]);
                delete(app)
                return
            end


            % LOAD THE SETTINGS
            % If we do not have settings (first time using the app), we
            % create a settings file, asking the user where he will store
            % the DATA.mat file.
            app.LoadSettings()

            % DATA.mat
            % Load in the DATA.mat data and make sure we have what we need
            % to get to work.

            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                'Indeterminate','on',...
                'Icon', "AppImages\MAIcon.png",...
                'Message',sprintf('Opening DATA.mat...'));            
            [hasAnything,haveTAXTAB,haveDB,haveMAP,returnedmsg] = loadDATAmat(app);


            % LOAD THE DATA.MAT
            % If the DATA.mat is empty, or if we do not have a TAXONOMY 
            % table structure we can't do anything. Tell the user and close
            % the app.
            if or(~hasAnything,~haveTAXTAB)
                close(prg)
                tit = "ERROR";
                [~] = uiconfirm(app.CLAInterpolatorUIFigure,returnedmsg,tit,...
                    "Icon","AppImages\MAIcon.png",...
                    "Options",["OK"]);
                delete(app)
                return
            end

            % If we don't have a DB, we can leave the DB open but we need 
            % to load in data
            if ~haveDB
                close(prg)
                tit = "MISSING DATA";
                msg = sprintf("There is no observation data in the DATA.mat file. " + ...
                    "You will need to load data using the 'Update Data' button.");
                s = uiconfirm(app.CLAInterpolatorUIFigure,msg,tit,...
                    "Icon","AppImages\Icon_01.png",...
                    "Options",["OK"]);
            else

                % DISPLAY AVAILABLE DATA
                prg.Message = sprintf('Setting up grid tab...');
                displayAvailableProcDates(app)

                % SET REQUESTED GRID TAB
                setReqGridButtons(app)

            end

            % Report on the treasury data in the DATA file
            if ~isfield(app.DATA,'YearTreasury')
                msg = sprintf('There is no treasury data loaded. You will need to update the treasury data.');
                app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;msg];
            else
                msg = sprintf('Treasury data loaded from %s to %s',...
                    string(min(app.DATA.YearTreasury.DATE)),...
                    string(max(app.DATA.YearTreasury.DATE)));
                app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;msg];
            end


            % FORMATTING
            greyLamps(app)

            % Add A Geographical Axes (Map)
            %app.UIAxes_MAP = geoaxes(app.(gxtabn),...
            %    "Position",pos,...
            %    "HitTest","on",...
            %    "PickableParts","all",...
            %    "ButtonDownFcn",@clickGeo);
            app.MAP = geoaxes(app.Panel_Map);

            % Set zoom level to continental us
            maxlat = 46.7800;
            maxlon = -66.800;
            minlat = 30.0200;
            minlon = -125.000;
            nlat = [minlat   maxlat];
            nlon = [minlon  maxlon];
            geolimits(app.MAP,nlat,nlon)

            % Clean up Axes and Print Title
            app.MAP.LatitudeLabel.String = "";
            app.MAP.LongitudeLabel.String = "";
            app.MAP.LatitudeAxis.Visible = 'off';
            app.MAP.LongitudeAxis.Visible = 'off';
            drawnow


            % CLOSE PROGRESS BAR
            close(prg)



        end

        % Button pushed function: Button_CreateCollateralGroup
        function Button_CreateCollateralGroupPushed(app, event)
            %
            %
            %
            %
            %

            % Get a name for the new collateral group
            grpname = getTextFromUser("Please enter a short name for the collateral" + ...
                " group you would like to use. Please avoid using spaces or special " + ...
                "characters, and please don't put a numeral as the first character. " + ...
                "So, 'StrongCollateral1' is ok, '1StrongCollateral' is not.");

            % Create the group using the function
            grid_createGroup(app,grpname,app.ListBox_CollateralTypes,app.Tree_CollateralTypes);







        end

        % Button pushed function: Button_AddToCollateralGroup
        function Button_AddToCollateralGroupPushed(app, event)
            %
            %
            %
            %
            %
            % -------------------------------------------------------------

            % Set up inputs
            ListBoxtoUse = app.ListBox_CollateralTypes;
            TreeToAddTo = app.Tree_CollateralTypes;

            % Add selected items to the group using the function
            grid_add2Group(app,ListBoxtoUse,TreeToAddTo)





        end

        % Button pushed function: Button_RemoveCollateral
        function Button_RemoveCollateralPushed(app, event)
            %
            %
            %
            %
            %
            % -------------------------------------------------------------


            % Get the selected collateral group (will be the parent) and
            % ensure that the user has selected a collateral group, not
            % just a single collateral type
            parentGroup = app.Tree_CollateralTypes.SelectedNodes;
            if isempty(parentGroup)
                msg = sprintf('You need to select a collateral group to remove.  Please select a collateral group and try again.');
                uialert(app.CLAInterpolatorUIFigure,msg,"SELECTION ERROR","Icon","AppImages\MAIcon.png");
                return
            end
            

            % Error trapping
            % If the user selected a collateral type (not a full group
            % of collateral types), then the parent of the selection will
            % not be the full Tree, but will be a TreeNode.  If we find
            % that the class of the parent of the selected collateral type
            % is NOT a Tree, then we show an error and return.
            if ~strcmpi(class(parentGroup.Parent),"matlab.ui.container.Tree")
                msg = sprintf('It looks like you have selected a collateral type, not a full group.  Please select a full group and try again.');
                uialert(app.CLAInterpolatorUIFigure,msg,"SELECTION ERROR","Icon","AppImages\MAIcon.png");
                return
            end


            % Get the individual collateral types within the selected
            % collateral group (these will be returned to the full list of
            % available types in the left hand box)
            nodes2Remove = parentGroup.Children;
            

            % Loop through the collateral types within the selected
            % collateral group and return them to the list of available
            % (unasigned) collateral types
            numCtypes = size(nodes2Remove,1);
            for t = 1:numCtypes

                % Add the removed collateral type to the list of available
                % collateral types
                app.ListBox_CollateralTypes.Items = sort([app.ListBox_CollateralTypes.Items,nodes2Remove(t).Text]);
                app.ListBox_CollateralTypes.ItemsData = sort([app.ListBox_CollateralTypes.Items,nodes2Remove(t).Text]);

            end
            

            % Remove the collateral group from the created collateral group
            % hierarchy
            delete(parentGroup)






            
        end

        % Button pushed function: Button_DelFromCollateralGroup
        function Button_DelFromCollateralGroupPushed(app, event)
            %
            %
            %
            %
            %
            %
            %

            % Set the inputs
            ListBoxtoUse = app.ListBox_CollateralTypes;
            TreeToDelFrom = app.Tree_CollateralTypes;

            % Remove the selected items from the group using the grid
            % function
            grid_deleteFromGroup(app,ListBoxtoUse,TreeToDelFrom)

        end

        % Button pushed function: Button_CreateIndustryGroup
        function Button_CreateIndustryGroupPushed(app, event)
            %
            %
            %
            %
            %

            % Get a name for the new industry group
            grpname = getTextFromUser("Please enter a short name for the industry" + ...
                " group you would like to use. Please avoid using spaces or special " + ...
                "characters, and please don't put a numeral as the first character. " + ...
                "So, 'Industry1' is ok, '1stIndustry' is not.");

            % Create the group using the function
            grid_createGroup(app,grpname,app.ListBox_UnincludedIndustries,app.Tree_Industries);
        end

        % Button pushed function: Button_DelFromIndustryGroup
        function Button_DelFromIndustryGroupPushed(app, event)
            % Set the inputs
            ListBoxtoUse = app.ListBox_UnincludedIndustries;
            TreeToDelFrom = app.Tree_Industries;

            % Remove the selected items from the group using the grid
            % function
            grid_deleteFromGroup(app,ListBoxtoUse,TreeToDelFrom)            
        end

        % Button pushed function: Button_AddToIndustryGroup
        function Button_AddToIndustryGroupPushed(app, event)
            % Set up inputs
            ListBoxtoUse = app.ListBox_UnincludedIndustries;
            TreeToAddTo = app.Tree_Industries;

            % Add selected items to the group using the function
            grid_add2Group(app,ListBoxtoUse,TreeToAddTo)         
            
        end

        % Button pushed function: Button_GeoBuild
        function Button_GeoBuildPushed(app, event)
            %
            %
            %
            %
            % -------------------------------------------------------------

            % First run the "clear" button in case the user forgot to
            app.Button_GeoUndoPushed

            % Get User Selected Geography Levels
            levels = [...
                app.Button_Region.Value,...
                app.Button_FEDBranch.Value,...
                app.Button_GeoState.Value,...
                app.Button_GeoMSA.Value,...
                app.Button_GeoUrbRur.Value];

            % Progress diaglog
            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                "Icon","AppImages\Icon_01.png",...
                "Indeterminate","on",...
                "Message", "Generating geographical structure...");

            % Initialize
            lowest_level_nodes = app.Tree_Geography.Children;
            lowest_level_varname = [];


            % Add Regions beneath the US level
            if app.Button_Region.Value
                parents_lev_1 = app.Tree_Geography.Children;
                ChildVarName = 'Location_r_NameRegion';
                [lowest_level_nodes,lowest_level_varname] =...
                    grid_addGeoLevel(app,parents_lev_1,[] ,ChildVarName);
            end


            % Add FedBranches to the Regions
            if app.Button_FEDBranch.Value
                [lowest_level_nodes,lowest_level_varname] =...
                    grid_addGeoLevel(app,lowest_level_nodes,lowest_level_varname,...
                    'Location_Fed_NameFedBranch');
            end
            
            % Add States to Lowest Level Nodes
            if app.Button_GeoState.Value
                [lowest_level_nodes,lowest_level_varname] =...
                    grid_addGeoLevel(app,lowest_level_nodes,lowest_level_varname,...
                    'Location_s_NameState');
            end

            % Add Urban/Rural to Lowest Level Nodes
            % note that Urban/Rural nodes are not specific to a given
            % location (each state, each region has both urban and rural,
            % so for urban/rural, we need to follow the entire path.
            if app.Button_GeoUrbRur.Value
                [lowest_level_nodes,lowest_level_varname] =...
                    grid_addGeoLevel(app,lowest_level_nodes,lowest_level_varname,...
                    'Location_mr_NameMetroRural');
            end


            % Add MSAs to Lowest Level Nodes
            if app.Button_GeoMSA.Value
                [lowest_level_nodes,lowest_level_varname] =...
                    grid_addGeoLevel(app,lowest_level_nodes,lowest_level_varname,...
                    'Location_m_NameMSA');
            end
            
            % Close the progress dialog
            close(prg)


        end

        % Button pushed function: Button_GeoUndo
        function Button_GeoUndoPushed(app, event)
            %
            %
            %
            % -------------------------------------------------------------

            % Delete the current children
            a = app.Tree_Geography.Children;
            a.delete;

            % Create the top level (US)
            parent0 = app.Tree_Geography;
            regname = "U.S.";
            lev0 = uitreenode(parent0,'Text',regname);

        end

        % Button pushed function: Button_UpdateData
        function Button_UpdateDataPushed(app, event)
            %
            %
            %   Bring in new data into the tool
            %
            % ----------------------------------------------------------


            % Find the calling button (if we are loading a portfolio, we
            % save the portfolio in a different file)
            if event.Source == app.Button_UpdateData
                uploadType = 'DATA';
            elseif event.Source == app.Button_LoadPortfolio
                uploadType = 'PORTFOLIO';
            end

            % Set the floating rate that we are swapping to
            app.SwapTo = app.ButtonGroup_SwapFixedto.SelectedObject.Tag;
            
            % LOAN PRICING DATA
            % Get the file paths for the text files to upload from the user
            [fn_L,fn_F,fn_B] = getFilePaths(app);
            if any([isnumeric(fn_L),isnumeric(fn_F),isnumeric(fn_B)])
                [~] = uiconfirm(app.CLAInterpolatorUIFigure,"One or more file paths missing.","NO FILE",...
                    'Icon','AppImages\Icon_01.png',...
                    'Options',{'OK'});
                return
            end
            
            app.CLAInterpolatorUIFigure.WindowState = "normal";
            app.CLAInterpolatorUIFigure.WindowStyle = "alwaysontop";



            % ******
            % TEMORARILY SETTING THESE WITHOUT ASKING THE USER
            %folderl = "F:\Massachusetts Analytics\Clients & Products\GA\GA - CLA InterpPlus\Phase 2\CLA Data 2024-10-18\documents_20241018";
            %folderf = "F:\Massachusetts Analytics\Clients & Products\GA\GA - CLA InterpPlus\Phase 2\CLA Data 2024-09-25\documents_20240925\Filtered Updated 2023";
            %folderb = "F:\Massachusetts Analytics\Clients & Products\GA\GA - CLA InterpPlus\Phase 2\CLA Data 2024-08-20\documents_20240826\Updated 2023";
            %fn_L = strcat(folderl,"\Loan_2023_Updated_Rates.txt");
            %fn_F = strcat(folderf,"\Facility_2023.txt");
            %fn_B = strcat(folderb,"\Borrower_2023_Updated.txt");

            % Clear the data notes
            app.TextArea_DataNotes.Value = "UPDATING DATA.";
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('Loan Data: %s',fn_L)];
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('Facility Data: %s',fn_F)];
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('Borrower Data: %s',fn_B)];


            % Start a progress bar
            msg = "Building observation data importer...";
            tic
            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                "Icon","AppImages\Icon_01.png",...
                "Indeterminate","on",...
                "Message",msg);

            % Build the importer
            % At this point the importer class object will only have:
            % - taxonomy tables
            % - pathnames for the various files (.txt) to import
            % We also build a "light" importer to store in the DB so that
            % we can trace back the inital file paths of the data that was
            % uploaded to create the DB. The "light" IMP only has the
            % pathnames and Taxonomy tabs.
            IMP0 = CLAdataImporter(fn_L,fn_F,fn_B,app.DATA.TAXONOMYTABS);
            IMP_light = IMP0;

            % Import the data
            % Here we import the data directly from the text files to create the raw
            % import tables:
            %   L: raw loan data
            %   F: raw facility data
            %   B: raw borrower data
            %
            % These tables will be deleted at the end of the process
            %
            pausetime = max(0,2-toc);
            pause(pausetime);
            prg.Message = "Importing Loan Data...";
            tic
            IMP1 = IMP0.importLOAN;
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('Loan data imported')];


            % If we are running a portfolio, the data should only relate to
            % either all fixed rate, or all SOFR, or all PRIME. If not,
            % throw an error to the user.
            if strcmpi(uploadType,'PORTFOLIO')
                % pricing structure 1 is fixed rate, and 2 is floating
                fixedandfloat = all(ismember([1,2],IMP1.L_RAW.pricing_structure));
                if fixedandfloat
                    msg = sprintf(['Portfolio has both fixed and floating ' ...
                        'data. A portfolio must have a single pricing ' ...
                        'structure (since the grids are specific to the ' ...
                        'pricing structure).']);
                    [~] = uiconfirm(app.CLAInterpolatorUIFigure,msg,"ERROR",...
                        'Icon','AppImages\Icon_01.png',...
                        'Options',{'OK'});
                    return
                end

                % If pricing structure is 2 (floating) and the loans
                % consist of both PRIME and SOFR or PRIME and LIBOR, then
                % throw an error.
                multipleindex = (any(ismember([10:14],IMP1.L_RAW.Index)) + ...
                    any(ismember([1:9],IMP1.L_RAW.Index)) + ...
                    any(ismember([11:136],IMP1.L_RAW.Index))) > 1;
                if multipleindex
                    msg = sprintf(['Portfolio mulitple indeces (LIBOR,SOFR,PRIME) ' ...
                        'data. A portfolio must have a single pricing ' ...
                        'structure (since the grids are specific to the ' ...
                        'pricing structure).']);
                    [~] = uiconfirm(app.CLAInterpolatorUIFigure,msg,"ERROR",...
                        'Icon','AppImages\Icon_01.png',...
                        'Options',{'OK'});
                    return
                end
            end



            pausetime = max(0,2-toc);
            pause(pausetime);
            prg.Message = "Importing Facility Data...";
            tic
            IMP2 = IMP1.importFACILITY;
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('Facility data imported')];
            pausetime = max(0,2-toc);
            pause(pausetime);
            prg.Message = "Importing Borrower Data...";
            tic
            IMP3 = IMP2.importBORROWER;
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('Borrower data imported')];
            fprintf('imported.\n')
            IMP = IMP3;

            % Data Notes
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('Data Imported.')];
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('\n')];


            % CHECK THAT THE TREASURY DATES COVER THE FULL RANGE OF THE
            % IMPORTED OBSERVATIONS
            % Calculate the max and min dates for the imported obsservation
            % data (loan, facility and borrower level)
            OBSL_minDate = datetime(min(IMP.L.file_date),'ConvertFrom','datenum','Format','dd/MM/yyyy');
            OBSL_maxDate = datetime(max(IMP.L.file_date),'ConvertFrom','datenum','Format','dd/MM/yyyy');
            OBSF_minDate = datetime(min(IMP.F.file_date),'ConvertFrom','datenum','Format','dd/MM/yyyy');
            OBSF_maxDate = datetime(max(IMP.F.file_date),'ConvertFrom','datenum','Format','dd/MM/yyyy');
            OBSB_minDate = datetime(min(IMP.B.file_date),'ConvertFrom','datenum','Format','dd/MM/yyyy');
            OBSB_maxDate = datetime(max(IMP.B.file_date),'ConvertFrom','datenum','Format','dd/MM/yyyy');

            % Calculate the max and min dates for treasuries
            UST_minDate = min(app.DATA.YearTreasury.DATE);
            UST_maxDate = max(app.DATA.YearTreasury.DATE);

            % Check that the UST data covers the observation data
            OBSL_OK_UST = and(UST_minDate<=OBSL_minDate,UST_maxDate>=OBSL_maxDate);
            OBSF_OK_UST = and(UST_minDate<=OBSF_minDate,UST_maxDate>=OBSF_maxDate);
            OBSB_OK_UST = and(UST_minDate<=OBSB_minDate,UST_maxDate>=OBSB_maxDate);

            % If we are not fully covered, send an error message and return
            emsg = "ERROR: data not fully loaded. Please correct inputs and reload. ";
            if ~OBSL_OK_UST
                emsg = strcat(emsg," Range of treasury data does not cover full range of loan data.");
            end
            if ~OBSF_OK_UST
                emsg = strcat(emsg," Range of treasury data does not cover full range of facility data.");
            end
            if ~OBSB_OK_UST
                emsg = strcat(emsg," Range of treasury data does not cover full range of borrower data.");
            end
            if ~all([OBSL_OK_UST,OBSF_OK_UST,OBSB_OK_UST])
                uialert(app.CLAInterpolatorUIFigure,emsg,"ERROR",...
                    "Icon","AppImages\Icon_01.png")
                return
            end

            % Get Swap data to import
            [fn_SOFR,fn_LIBOR] = getSwapDataFilePath(app);
            if any([isnumeric(fn_L),isnumeric(fn_F),isnumeric(fn_B)])
                [~] = uiconfirm(app.CLAInterpolatorUIFigure,"One or more file paths missing.","NO FILE",...
                    'Icon','AppImages\Icon_01.png',...
                    'Options',{'OK'});
                return
            end

            app.CLAInterpolatorUIFigure.WindowStyle = "alwaysontop";
            app.CLAInterpolatorUIFigure.WindowState = "normal";

            %fn_LIBOR = "F:\Massachusetts Analytics\Clients & Products\GA\GA - CLA InterpPlus\Phase 2\FIXED VS LIBOR.xlsx";
            %fn_SOFR = "F:\Massachusetts Analytics\Clients & Products\GA\GA - CLA InterpPlus\Phase 2\FIXED VS SOFR.xlsx";

            % Create Importer
            pausetime = max(0,2-toc);
            pause(pausetime);
            prg.Message = "Creating swap importer...";
            tic
            SI = CLAswapImporter(fn_SOFR,fn_LIBOR);

            % Data Notes
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('Swap Data Imported.')];
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('LIBOR: %s',fn_LIBOR)];
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('SOFR: %s',fn_SOFR)];
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('\n')];

            
            % Import Sofr
            pausetime = max(0,2-toc);
            pause(pausetime);
            prg.Message = "importing SOFR swap data...";
            tic            
            SI = SI.importSOFR;
            
            % Import Libor
            pausetime = max(0,2-toc);
            pause(pausetime);
            prg.Message = "importing LIBOR swap data...";
            tic              
            SI = SI.importLIBOR;
            
            % Make Tenor Tabs
            pausetime = max(0,2-toc);
            pause(pausetime);
            prg.Message = "Creating swap tenor tables...";
            tic              
            SI = SI.makeTenorTabs;
            
            % Interpolate Points
            pausetime = max(0,2-toc);
            pause(pausetime);
            prg.Message = "interpolating full SOFR curves from imported data...";
            tic              
            SI = SI.createSOFRTable;
            pausetime = max(0,2-toc);
            pause(pausetime);
            prg.Message = "interpolating full LIBOR curves from imported data...";
            tic              
            SI = SI.createLIBORTable;


            % HERE, CHECK THAT THE SWAP DATA COVERS THE SAME TIME RANGE 
            % AS THE LOAN DATA
            % Calculate the max and min swap dates
            SOFR_minDate = datetime(min(SI.SOFR.SWAPDATE),'ConvertFrom','datenum','Format','dd/MM/yyyy');
            SOFR_maxDate = datetime(max(SI.SOFR.SWAPDATE),'ConvertFrom','datenum','Format','dd/MM/yyyy');
            LIBOR_minDate = datetime(min(SI.LIBOR.SWAPDATE),'ConvertFrom','datenum','Format','dd/MM/yyyy');
            LIBOR_maxDate = datetime(max(SI.LIBOR.SWAPDATE),'ConvertFrom','datenum','Format','dd/MM/yyyy');

            % Check that the swaps data covers the observation data
            OBSL_OK_SOFR = and(SOFR_minDate<=OBSL_minDate,SOFR_maxDate>=OBSL_maxDate);
            OBSF_OK_SOFR = and(SOFR_minDate<=OBSF_minDate,SOFR_maxDate>=OBSF_maxDate);
            OBSB_OK_SOFR = and(SOFR_minDate<=OBSB_minDate,SOFR_maxDate>=OBSB_maxDate);
            OBSL_OK_LIBOR = and(LIBOR_minDate<=OBSL_minDate,LIBOR_maxDate>=OBSL_maxDate);
            OBSF_OK_LIBOR = and(LIBOR_minDate<=OBSF_minDate,LIBOR_maxDate>=OBSF_maxDate);
            OBSB_OK_LIBOR = and(LIBOR_minDate<=OBSB_minDate,LIBOR_maxDate>=OBSB_maxDate);

            % If we are not fully covered, send an error message and return
            emsg = "ERROR: data not fully loaded. Please correct inputs and reload. ";
            if ~OBSL_OK_SOFR
                emsg = strcat(emsg," Range of SOFR swap data does not cover full range of loan data.");
            end
            if ~OBSF_OK_SOFR
                emsg = strcat(emsg," Range of SOFR swap data does not cover full range of faciltiy data.");
            end
            if ~OBSB_OK_SOFR
                emsg = strcat(emsg," Range of SOFR swap data does not cover full range of borrower data.");
            end
            if ~OBSL_OK_LIBOR
                emsg = strcat(emsg," Range of LIBOR swap data does not cover full range of loan data.");
            end
            if ~OBSF_OK_LIBOR
                emsg = strcat(emsg," Range of LIBOR swap data does not cover full range of facility data.");
            end
            if ~OBSB_OK_LIBOR
                emsg = strcat(emsg," Range of LIBOR swap data does not cover full range of borrower data.");
            end
            if ~all([OBSL_OK_SOFR,OBSF_OK_SOFR,OBSB_OK_SOFR,OBSL_OK_LIBOR,OBSF_OK_LIBOR,OBSB_OK_LIBOR])
                uialert(app.CLAInterpolatorUIFigure,emsg,"ERROR",...
                    "Icon","AppImages\Icon_01.png")
                return
            end

            % Update the CLAidMap
            pausetime = max(0,2-toc);
            pause(pausetime);
            % if there is not an existing IDMAP, create one using the raw
            % loan data (from the IMPORTER)
            if ~isfield(app.DATA,'IDMAP')
                prg.Message = "creating new CLA ID map...";
                app.DATA.IDMAP = CLAidMap(IMP.L_RAW, IMP.F_RAW, IMP.B_RAW);
                app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('new id map created')];
            end
            prg.Message = "Updating the CLA ID map...";
            tic
            [app.DATA.IDMAP,numLoanID2add,numFacilityID2add,numborrowerID2add] =...
                updateIdMap(app.DATA.IDMAP,IMP.L_RAW,IMP.F_RAW,IMP.B_RAW);

            % Save the updated idmap to the DATA.mat file
            prg.Message = "Saving updated CLA ID map...";
            fn = strcat(app.SETTINGS.settings.DATAFilePath,"\DATA.mat");
            IDMAP = app.DATA.IDMAP;
            save(fn,'-append',"IDMAP")
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('updated id map saved.')];

            % Remove Loans with missing Loan_ID
            pausetime = max(0,2-toc);
            pause(pausetime);
            prg.Message = "Removing loans with missing ID...";
            tic
            IMP = IMP.checkData;

            % Transform Ids to Numerical
            % We load the numerical ID mapping (stored in IDMAP), then map the
            % categorical IDs to numerical.
            %
            %
            pausetime = max(0,2-toc);
            pause(pausetime);
            prg.Message = "Converting IDs to numerical...";
            tic
            IMP.L = app.DATA.IDMAP.mapIDs(IMP.L);
            IMP.F = app.DATA.IDMAP.mapIDs(IMP.F);
            IMP.B = app.DATA.IDMAP.mapIDs(IMP.B);

            % Remove unused variables
            % Certain variables are unused and are removed here.
            pausetime = max(0,2-toc);
            pause(pausetime);
            prg.Message = "Removing unused variables...";
            tic
            IMP = IMP.removeUnusedVars;
            
            % Make CLA Data Tables
            pausetime = max(0,4-toc);
            pause(pausetime);
            prg.Message = "creating cla data tables...";
            tic            
            IMP = IMP.makedataTables;

            % Create DB            
            pausetime = max(0,2-toc);
            pause(pausetime);
            prg.Message = "Creating CLA Database objects...";
            tic            
            DB = IMP.makeNewDB;
            DB.Importer = IMP_light;
            [DB,~] = gimmeCleanHist(DB,app.DATA.YearTreasury,'TermType','estimated');

            % Data Notes
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('DB Created.')];
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('\n')];

            % Create the Historical Data
            [DB,clean_diagnostics] = gimmeCleanHist(DB,app.DATA.YearTreasury,'TermType','estimated');
            matchvars ={'F_Bank_ID','F_file_date','B_borrower_ID','L_spread_bps'};
            [PriceDecisionID,dups] =  SinglePriceDecision(DB,DB.H,matchvars);
            DB.H.PriceDecisionID = PriceDecisionID;


            % Data Notes
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('History Calculated.')];
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('\n')];

            % Swap to SOFR DB or LIBOR based on the user input
            pausetime = max(0,2-toc);
            pause(pausetime);
            
            if strcmpi(app.SwapTo,"SOFR")
                prg.Message = "Calculating effective spread if fixed rate loans were swapped to SOFR...";
                tic            
                DB = DB.swapToSOFR(SI);
                app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('Data swapped to SOFR.')];
            elseif strcmpi(app.SwapTo,"LIBOR")
                prg.Message = "Calculating effective spread if fixed rate loans were swapped to LIBOR...";
                tic            
                DB = DB.swapToLIBOR(SI);
                app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('Data swapped to LIBOR.')];
            else
                close(prg)
                uialert(app.CLAInterpolatorUIFigure,"ERROR incorrect SwapTo property.","ERROR",...
                    "Icon","AppImages\Icon_01.png")
                app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('ERROR SWAPPING DATA!')];
                return
            end

            % Data Notes
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;sprintf('\n')];

            % How we store the incoming data depends on whether we are 
            % importing observations ('DATA') or a portfolio 
            % ('PORTFOLIO'). Observations are stored as CLA_DB (within
            % the DATA structure), while a portfolio is stored as PORT.
            % Note that PORT is in the format of the H table of the DB.
            if strcmpi(uploadType,'DATA')
                app.DATA.CLA_DB = DB;
            elseif strcmpi(uploadType,'PORTFOLIO')
                app.DATA.PORT = DB.H;
            else
                msg = sprintf('cannot identify upload type');
                error(msg)
            end


            % Enable certain features on the calculate Prices Tab (Nearby
            % Point Analysis)
            app.DropDown_Risk.Enable = 'on';
            app.DropDown_Collateral.Enable = 'on';
            app.DropDown_Size.Enable = 'on';
            app.DropDown_Term.Enable = 'on';
            app.DropDown_Industry.Enable = 'on';
            app.DropDown_FacilityType.Enable = 'on';
            app.Button_MapPrices.Enable = 'on';
            app.Panel_Map.Enable = 'on';
            app.UITable_NearbyPoints.Enable = 'on';
            app.EditField_SpreadSelected.Enable = 'on';
            app.EditField_numpts.Enable = 'on';
            app.EditField_WtgAvgDistSelected.Enable = 'on';
            app.EditField_ConfidenceScore.Enable = 'on';            


            % Close out
            if strcmpi(uploadType,'DATA')
                msg = "Observation data updated.";
            elseif strcmpi(uploadType,'PORTFOLIO')
                msg = "Portfolio uploaded.";
            end
            prg.Message = msg;
            displayAvailableProcDates(app)
            pause(1)
            close(prg)

        end

        % Button pushed function: Button_BuildGrid
        function Button_BuildGridPushed(app, event)
            %
            %
            %
            %
            %
            % -------------------------------------------------------------

            % Open progress dialog
            msg = sprintf('Constructing grid based on parameters input...');
            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                "Icon","AppImages\Icon_01.png",...
                "Indeterminate","on",...
                "Message",msg);
            tic

            
            % CreatedOn Date and Time
            createdon = datetime();

            % LoanSize Structure
            loansizestruct = struct();
            loansizestruct.Min = str2double(string(app.EditField_MinLoanSize.Value));
            loansizestruct.Max = str2double(string(app.EditField_MaxLoanSize.Value));
            grps = app.EditField_LoanSizeGroups.Value;
            loansizestruct.Groups = str2double(strsplit(string(grps),{',',';',' '}));
            
            % Risk Categories
            riskcategorystruct = struct();
            riskcategorystruct.Min = str2double(string(app.EditField_MinRiskNum.Value));
            riskcategorystruct.Max = str2double(string(app.EditField_MaxRiskNum.Value));
            grps = app.EditField_RiskCategoryGroups.Value;
            riskcategorystruct.Groups = str2double(strsplit(string(grps),{',',';',' '}));

            % Term Categories
            termcategorystruct = struct();
            termcategorystruct.Min = str2double(string(app.EditField_MinTerm.Value));
            termcategorystruct.Max = str2double(string(app.EditField_MaxTerm.Value));
            grps = app.EditField_TermGroups.Value;
            termcategorystruct.Groups = str2double(strsplit(string(grps),{',',';',' '}));

            % New or Renewal (Origination Type)
            ncheckednodes = size(app.Tree_NewRenew.CheckedNodes,1);
            neworrenewvec = NaN(1,ncheckednodes);
            for n = 1:ncheckednodes
                nd = app.Tree_NewRenew.CheckedNodes(n).NodeData;
                neworrenewvec(n) = nd;
            end
            if isempty(neworrenewvec)
                msg = sprintf(['You have not checked either new originations ' ...
                    'or renewals. You need to select at least one (or you ' ...
                    'can select both). Please make a selection and recreate the grid.']);
                s = uiconfirm(app.CLAInterpolatorUIFigure,msg,"ERROR","Icon","AppImages\Icon_01.png");
                return

            end

            % RateType
            rt = app.ButtonGroup_Index.SelectedObject.Tag;
            ratestab = defRatesTab();
            ratestab.USE = strcmpi(rt, ratestab.Index);

            % Collateral Groups
            coltab = colTree2colTab(app.Tree_CollateralTypes);            

            % Industries
            indtable = indTree2indTab(app.Tree_Industries);

            % Geographies
            % Get Lowest level of geography
            locations = geoTree2geoTab(app.Tree_Geography,app.DATA.TAXONOMYTABS);
            assignin('base',"app_Tree_Geography",app.Tree_Geography)
            
            % Create Grid
            app.GRID = CLAgrid(app.DATA.TAXONOMYTABS,...
                'CreatedOn',createdon,...
                'LoanSize',loansizestruct,...
                'RiskCategories',riskcategorystruct,...
                'TermCategories',termcategorystruct,...
                'NewOrRenewal',neworrenewvec,...
                'RateType',ratestab,...
                'IndustryGroups',indtable,...
                'CollateralGroups',coltab,...
                'Geographies',locations);
            assignin('base',"app_GRID",app.GRID)

            
            pauselength = max(0,3-toc);
            pause(pauselength)
            msg = sprintf('done.');
            prg.Message = msg;
            tic
            pauselength = max(0,0.5-toc);
            pause(pauselength)
            close(prg)






        end

        % Button pushed function: Button_Build_PopGrid
        function Button_Build_PopGridPushed(app, event)
            %
            %
            %
            %
            %
            %
            % -------------------------------------------------------------
            fdtab = app.DATA.CLA_DB.fileDatesTab;
            filedate = max(fdtab.FileDates);
            msg = sprintf("Constructing list of pricing cells in the output grid...");
            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                "Message",msg,...
                "Icon","AppImages\Icon_01.png",...
                "Indeterminate","on");
           
            % Create the pricing grid
            try
                [POPGRID, OBS_FULL, diagnostics] = GimmeOBS(app.DATA.CLA_DB,app.GRID,filedate);
            catch ME
                close(prg)
                ErrorStruct = struct();
                ErrorStruct.DB = app.DATA.CLA_DB;
                ErrorStruct.GRID = app.GRID;
                ErrorStruct.FileDate = filedate;
                rethrow(ME)
            end
           
            % Store the POPGRID in the POPGRID property
            app.POPGRID = POPGRID;

            
            % Light appropriate lights
            if and(size(app.POPGRID.POPULATED_GRID,1)>0,size(app.POPGRID.OBS,1)>10)
                app.Lamp_LoadedUnpopulatedGrid.Color = [0 1 0];
            else
                app.Lamp_LoadedUnpopulatedGrid.Color = [1 0 0];
                msg = [msg; "Something went wrong with the construction of " + ...
                    "the unpoppulated grid, or the observations."];
                ErrorStruct.POPGRID = app.POPGRID;
                assignin('base','ErrorStruct',ErrorStruct)
            end

            % Check construction of POPGRID
            ResultsTab = app.POPGRID.checkPopGrid;

            % Construct message for user
            msg = app.TextArea_InterpNotes.Value;
            msg = [msg;sprintf(['Unpopulated grid created. Grid contains ' ...
                '%.0f individual prices (cells).'],size(app.POPGRID.POPULATED_GRID,1))];
            msg = [msg;sprintf(['Observations table created. %.0f pricing ' ...
                'observation data points available for the construction ' ...
                'of the pricing grid.'],size(app.POPGRID.OBS,1))];
            app.TextArea_InterpNotes.Value = msg;


            pausetime = max(0,2-toc);
            pause(pausetime)
            tic
            prg.Message = "done";
            pausetime = max(0,0.5-toc);
            assignin('base','POPGRID',app.POPGRID)
            pause(pausetime)            

            close(prg)

        end

        % Button pushed function: Button_RemoveIndustryGroup
        function Button_RemoveIndustryGroupPushed(app, event)
            %
            %
            %
            %
            %
            % -------------------------------------------------------------


            % Get the selected industry group (will be the parent) and
            % ensure that the user has selected a collateral group, not
            % just a single collateral type
            parentGroup = app.Tree_Industries.SelectedNodes;
            if isempty(parentGroup)
                msg = sprintf('You need to select an industry group to remove.  Please select an industry group and try again.');
                uialert(app.CLAInterpolatorUIFigure,msg,"SELECTION ERROR","Icon","AppImages\MAIcon.png");
                return
            end

            % Error trapping
            % If the user selected an industry type (not a full group
            % of industry types), then the parent of the selection will
            % not be the full Tree, but will be a TreeNode.  If we find
            % that the class of the parent of the selected industry type
            % is NOT a Tree, then we show an error and return.
            if ~strcmpi(class(parentGroup.Parent),"matlab.ui.container.Tree")
                msg = sprintf('It looks like you have selected an industry type, not a full group.  Please select a full group and try again.');
                uialert(app.CLAInterpolatorUIFigure,msg,"SELECTION ERROR","Icon","AppImages\MAIcon.png");
                return
            end


            % Get the individual industry types within the selected
            % industry group (these will be returned to the full list of
            % available types in the left hand box)
            nodes2Remove = parentGroup.Children;


            % Loop through the industry types within the selected
            % industry group and return them to the list of available
            % (unasigned) industry types
            numCtypes = size(nodes2Remove,1);
            for t = 1:numCtypes

                % Add the removed industry type to the list of available
                % industry types
                app.ListBox_UnincludedIndustries.Items = sort([app.ListBox_UnincludedIndustries.Items,nodes2Remove(t).Text]);
                app.ListBox_UnincludedIndustries.ItemsData = sort([app.ListBox_UnincludedIndustries.Items,nodes2Remove(t).Text]);

            end
            

            % Remove the industry group from the created industry group
            % hierarchy
            delete(parentGroup)






        end

        % Button pushed function: Button_SaveGrid
        function Button_SaveGridPushed(app, event)
            %
            %
            %
            %
            %
            % -------------------------------------------------------------

            % Keep these
            assignin('base', 'APP_GRID',app.GRID)
            assignin('base','FULLGRID',app.POPGRID)

        end

        % Button pushed function: Button_SetDefaultGrid
        function Button_SetDefaultGridPushed(app, event)
            %
            %
            %
            %
            %
            % -------------------------------------------------------------

            % open progress dialog
            msg = sprintf('Setting the grid parameters to their default values...');
            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                "Icon","AppImages\Icon_01.png",...
                "Indeterminate","on",...
                "Message",msg);
            tic


            % Loan Size
            % -------------------------------------------------------------
            app.EditField_MinLoanSize.Value = "0.25";
            app.EditField_MaxLoanSize.Value = "500";
            app.EditField_LoanSizeGroups.Value = "100";


            % RiskCategories
            % -------------------------------------------------------------
            app.EditField_MinRiskNum.Value = "1";
            app.EditField_MaxRiskNum.Value = "12";
            app.EditField_RiskCategoryGroups.Value = "6";

            % Term Categories
            % -------------------------------------------------------------
            app.EditField_MinTerm.Value = "10";
            app.EditField_MaxTerm.Value = "120";
            app.EditField_TermGroups.Value = "60";

            % Origination
            % -------------------------------------------------------------
            app.Tree_NewRenew.CheckedNodes = app.Tree_NewRenew.Children;

            % Revolving/Term
            % -------------------------------------------------------------
            app.Tree_FacilityType.CheckedNodes = app.Tree_FacilityType.Children;

            % Index/Fixed
            % -------------------------------------------------------------
            app.ButtonGroup_Index.SelectedObject = app.Button_Prime;

            % Collateral
            % -------------------------------------------------------------
            ctypes = app.DATA.CLA_DB.TaxonomyTabs.Collateral_Type.Collateral_Type_Name;
            ctypeNums = app.DATA.CLA_DB.TaxonomyTabs.Collateral_Type.Collateral_Type;

            % Set the parent tree node.
            parent = app.Tree_CollateralTypes;

            % Remove any current nodes (we don't have to move the assigned
            % collateral types back to the unused list, because we are 
            % creating types from the full (TAXONOMYTABS) list).
            delete(parent.Children)

            % Make two different collateral category tree nodes
            w = uitreenode(parent,'Text','Weakest/Unsecured');
            o = uitreenode(parent,'Text','All Others');
            
            for c = 1:length(ctypes)

                % Get the name of the current collateral types
                ctypen = string(ctypes(c));
                ctypenum = num2str(ctypeNums(c));
                ctypenwnum = strcat(ctypen,"_",ctypenum);

                % Depending on the collateral type take different action
                if strcmpi(ctypen,'Unsecured')

                    % Add Weakest_Unsecured collateral category
                    ch = uitreenode(w,'Text',ctypenwnum,'NodeData',ctypeNums(c));

                else

                    % Add Other collateral category
                    ch = uitreenode(o,'Text',ctypenwnum,'NodeData',ctypeNums(c));                    
                    
                end
            end

            % Remove the items from the "unused" listbox
            app.ListBox_CollateralTypes.Items(:) = [];

            % Industry
            % -------------------------------------------------------------

            % Set the parent tree node.
            parent = app.Tree_Industries;

            % Remove any current nodes (we don't have to move the assigned
            % collateral types back to the unused list, because we are 
            % creating types from the full (TAXONOMYTABS) list).
            delete(parent.Children)

            % Generate a default industry table
            [I,Industries] = defIndustryTab();

            % For each industry, create a node and add the appropriate
            % NAICS (2-digits) as sub nodes.
            for i = 1:size(I,1)
                
                % Industry node
                indname = char(I.IndGrpName(i));
                tmp_p = uitreenode(parent,'Text',indname);

                % Sub nodes
                NAICS2sInGroup = I.NAICS2s{i};
                IndNamesInGroup = Industries.IndustryNAICS2(ismember(Industries.NAICS2,NAICS2sInGroup));

                for n = 1:length(NAICS2sInGroup)
                    tn = uitreenode(tmp_p,"Text",char(IndNamesInGroup(n)),"NodeData",NAICS2sInGroup(n));
                end

            end

            % Remove the items from the "unused" listbox
            app.ListBox_UnincludedIndustries.Items(:) = [];


            % Geography
            % -------------------------------------------------------------

            % Get the location database
            L_all = app.DATA.CLA_DB.TaxonomyTabs.LocationDatabase;
            LocLevels = {'Location_r_NameRegion','Location_Fed_NameFedBranch','Location_mr_NameMetroRural'};
            L_some = unique(L_all(:,LocLevels),'rows');

            % Clear any existing trees
            delete(app.Tree_Geography.Children)

            % Build the tree. The highest level is the US
            C = uitreenode(app.Tree_Geography,...
                'Text',"U.S.",...
                'Tag',"Location_n_NameNational");


            % Add the Regional Level
            Regions = unique(L_some.Location_r_NameRegion);
            for r = 1:length(Regions)
                reg = char(Regions(r));
                R = uitreenode(C,'Text',reg,...
                    'Tag',"Location_r_NameRegion",...
                    'UserData',reg);

                idx_Region = L_some.Location_r_NameRegion == reg;
                L_REG = L_some(idx_Region,:);

                % Add the Fed Region Level
                FedRegions = unique(L_REG.Location_Fed_NameFedBranch);
                for f = 1:length(FedRegions)
                    fed = char(FedRegions(f));
                    F = uitreenode(R,'Text',fed,...
                        'Tag',"Location_Fed_NameFedBranch",...
                        'UserData',strcat(reg,"_",fed));

                    idx_fedregion = L_REG.Location_Fed_NameFedBranch == fed;
                    L_FED = L_REG(idx_fedregion,:);

                    % Add the urban/rural level
                    UrbRur = unique(L_FED.Location_mr_NameMetroRural);
                    for u = 1:length(UrbRur)
                        urb = char(UrbRur(u));
                        U = uitreenode(F,'Text',urb);
                    end
                end

                % Check all the boxes
                app.Tree_Geography.CheckedNodes = C;
            end

            % close progress dialog
            pauselength = max(0,2-toc);
            pause(pauselength)
            msg = sprintf('done.');
            prg.Message = msg;
            tic
            pauselength = max(0,0.5-toc);
            pause(pauselength)
            close(prg)

        end

        % Button pushed function: Button_RunChecks
        function Button_RunChecksPushed(app, event)
            %
            % Check before running the interpolation
            %
            %
            %
            % -------------------------------------------------------------

            % Message box text is a cell of strings
            msg =["Running Checks...";""];

            % Check that there is a CLA_DB loaded
            if ~isempty(app.DATA.CLA_DB)
                msg = [msg;"CLA database is loaded. Latest dates of observation data are:"];
                FileDateTab = fileDatesTab(app.DATA.CLA_DB);
                app.Lamp_LoadedDataBase.Color = [0 1 0];
                latestDates = string(maxk(FileDateTab.FileDates,3));
                for d = 1:length(latestDates)
                    dtstr = string(latestDates(d));
                    msg = [msg;dtstr];
                    app.TextArea_InterpNotes.Value = msg;
                end
            else
                app.Lamp_LoadedDataBase.Color = [1 0 0 ];
                msg = [msg; "ERROR no database loaded"];
                app.TextArea_InterpNotes.Value = msg;
                return
            end
            drawnow

            % Check that there is a CLA_GRID loaded
            if ~isempty(app.GRID)
                msg = [msg;"";"Pricing Grid is loaded.";""];
                app.Lamp_LoadedGRID.Color = [0 1 0];
                app.TextArea_InterpNotes.Value = msg;
            else
                app.Lamp_LoadedGRID.Color = [1 0 0];
                msg = [msg;"";"ERROR: no pricing grid loaded"];
                app.TextArea_InterpNotes.Value = msg;
                return
            end

            % Update InterpNotes
            app.TextArea_InterpNotes.Value = [app.TextArea_InterpNotes.Value;...
                sprintf('Pre-Run Checks Run')];





            

        end

        % Button down function: CALCULATEDISTANCESTab
        function CALCULATEDISTANCESTabButtonDown(app, event)
            %
            %
            %
            %
            %
            % -------------------------------------------------------------

            greyLamps(app);
            app.TextArea_InterpNotes.Value = '';
        end

        % Button pushed function: Button_CalculateDistances
        function Button_CalculateDistancesPushed(app, event)
            %
            %
            %
            %
            %
            %
            % -------------------------------------------------------------

            % Progress Bar
            ptsdone = app.tempdata;            
            drawnow
            msg = sprintf(['Calculating single dimensional distances between grid cells and ' ...
                'each of the individual observations.  This takes some time...%.0f',ptsdone]);
            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                "Icon","AppImages\Icon_01.png",...
                "Indeterminate","on",...
                "Message",msg);


            % Calculate the single dimensional distances
            POP = app.POPGRID.CalculateDistances(...
                'RunFrom',app);
            
            app.POPGRID = POP;
            % Keep this one
            assignin("base","app_POPGRID",app.POPGRID)

            close(prg)

            % Light the appropriate light (color)
            if ~isempty(app.POPGRID.POPULATED_GRID.Distances{1,1})
                app.Lamp_IndividualDistancesCalculated.Color = [0 1 0];
            else
                app.Lamp_IndividualDistancesCalculated.Color = [1 0 0];
            end


        end

        % Button pushed function: Button_SetDimensionWeights
        function Button_SetDimensionWeightsPushed(app, event)
            %
            %
            %
            %
            %
            %
            % -------------------------------------------------------------


            % Clear the plot and Nearby Points table
            cla(app.MAP)
            app.UITable_NearbyPoints.Data = [];

            % Turn Lamps Grey
            app.Lamp_ParamsOKforPriceRun.Color = [0.9 0.9 0.9];
            app.Lamp_POPGridOKForPricing.Color = [0.9 0.9 0.9];


            % Set weights
            dimwts2 = app.POPGRID.Parameters.DimWts;
            dimwts2.CollateralGroups('Raw') = app.EditField_Collateral.Value;
            dimwts2.Geographies('Raw') = app.EditField_Geography.Value;
            dimwts2.LoanSize('Raw') = app.EditField_Size.Value;
            dimwts2.TermCategories('Raw') = app.EditField_Term.Value;
            dimwts2.RiskCategories('Raw') = app.EditField_Risk.Value;
            dimwts2.Lag('Raw') = app.EditField_Lag.Value;
            dimwts2.FacilityType('Raw') = app.EditField_FacilityType.Value;
            dimwts2.IndustryGroups('Raw') = app.EditField_Industry.Value;

            % Check that we don't have zero weights
            if sum(dimwts2{'Raw',:})==0
                uialert(app.CLAInterpolatorUIFigure,...
                    "ERROR distance weights add to zero","ERROR",...
                    "Icon","AppImages\Icon_01.png")
                return
            end

            % Scale the weights so that they sum to 1
            dimwts2{"Scaled",:} = dimwts2{"Raw",:} ./ sum(dimwts2{"Raw",:});
            app.POPGRID.Parameters.DimWts = dimwts2;

            % Confirm with the user that the weights are successfully
            % loaded.
            uialert(app.CLAInterpolatorUIFigure,...
                'weights loaded.',"WEIGHTS LOADED","Icon","AppImages\Icon_01.png");


            % Plot the distance weight curve (this is not related to the 
            % dimension weights set above, it is just in preparation of
            % moving to the next tab where distance weight is set).
            plotx = [1:100];
            plot(app.UIAxes_DistWeights,...
                plotx,...
                ones(size(plotx))./linspace(1,app.POPGRID.Parameters.Smoothing.DistWtFactor,100),...
                'LineWidth',2,...
                'Color',[0.7 0.7 0.7]);
            app.DistWtLine = line(app.UIAxes_DistWeights,plotx,ones(size(plotx))./linspace(1,app.POPGRID.Parameters.Smoothing.DistWtFactor,100));
            app.DistWtLine.Color = 'r';
            app.DistWtLine.LineWidth = 0.25;

            


        end

        % Button pushed function: Button_CalculateGowerDistance
        function Button_CalculateGowerDistancePushed(app, event)
            %
            %
            % Calculate the Gower distance
            %
            %
            % -------------------------------------------------------------

            % Progress Bar
            ptsdone = app.tempdata;            
            drawnow
            msg = sprintf(['Calculating multi-dimensional (Gower) distance between grid cells and ' ...
                'each of the individual observations. %.0f',ptsdone]);
            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                "Icon","AppImages\Icon_01.png",...
                "Indeterminate","on",...
                "Message",msg);

            % Get weights from the input form
            app.GRID.Weights.RiskCategories('Raw') = app.EditField_Risk.Value;
            app.GRID.Weights.CollateralGroups('Raw') = app.EditField_Collateral.Value;
            app.GRID.Weights.Geographies('Raw') = app.EditField_Geography.Value;
            app.GRID.Weights.TermCategories('Raw') = app.EditField_Term.Value;
            app.GRID.Weights.LoanSize('Raw') = app.EditField_Size.Value;
            app.GRID.Weights.FacilityType('Raw') = app.EditField_FacilityType.Value;
            app.GRID.Weights.IndustryGroups('Raw') = app.EditField_Industry.Value;
            app.GRID.Weights.Lag('Raw') = app.EditField_Lag.Value;
            app.GRID.Weights{'Scaled',:} = app.GRID.Weights{'Scaled',:} ./ sum(app.GRID.Weights{'Scaled',:});
            wtstab = app.GRID.Weights;

            % Calculate the gower distance            
            app.POPGRID = app.POPGRID.CalcGower('WeightsTab',wtstab);
            assignin('base','POPGRID2',app.POPGRID)
            fprintf('calculated.\n')
            close(prg)


        end

        % Button pushed function: Button_CalculatePrices
        function Button_CalculatePricesPushed(app, event)
            %
            %
            %
            %
            %

            % Clear the plot and Nearby Points table
            cla(app.MAP)
            app.UITable_NearbyPoints.Data = [];


            % Progress Bar
            drawnow
            msg = sprintf('Calculating spreads for each grid cell...');
            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                "Icon","AppImages\Icon_01.png",...
                "Indeterminate","on",...
                "Message",msg);            
 

            % Calculate the individual interpolated spreads
            tic
            app.POPGRID = app.POPGRID.CalcPrices;
            fprintf('calculated.\n')
            toc

            % Match the locations
            tic
            prg.Message = "Adding locations...";
            app.POPGRID = app.POPGRID.addLocData(app.DATA.TAXONOMYTABS,'RunFrom',app);
            toc


            

            tic
            prg.Message = "Done.";
            pause(0.5-toc)
            close (prg)


        end

        % Button pushed function: Button_PreRunChecks
        function Button_PreRunChecksPushed(app, event)
            %
            %
            %
            %
            %
            %
            % -------------------------------------------------------------


            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                "Icon","AppImages\Icon_01.png",...
                "Message","running pre-run checks...");

            % Clear the plot and Nearby Points table
            cla(app.MAP)
            app.UITable_NearbyPoints.Data = [];

            % Turn Lamps Grey and Pause
            app.Lamp_ParamsOKforPriceRun.Color = [0.9 0.9 0.9];
            app.Lamp_POPGridOKForPricing.Color = [0.9 0.9 0.9];
            app.TextArea_NearbyPointNotes.Value = "";
            pause(1)


            % MAke sure we have a grid in place
            if isempty(app.GRID)
                app.Lamp_ParamsOKforPriceRun.Color = [1 0 0];
                msg = sprintf('Grid Empty, not ready to run.');
                uialert(app.CLAInterpolatorUIFigure,msg,"NO GRID","Icon","AppImages\Logo_02.png")
                close(prg)
                return
            end
            %if ~isprop(app.GRID,'DropDown_Risk')
            %    app.Lamp_ParamsOKforPriceRun.Color = [1 0 0];
            %    msg = sprintf('Drop Down Risk not a field in the GRID.');
            %    uialert(app.CLAInterpolatorUIFigure,msg,"NO GRID","Icon","AppImages\Logo_02.png")
            %    return
            %end


            % Set the drop down menus selecting which map is shown
            try
                GRID2DropDowns(app)
            catch
                % Update NearbyPointNotes
                app.TextArea_NearbyPointNotes.Value = [app.TextArea_NearbyPointNotes.Value;...
                    sprintf('ERROR creating drop down menus.')];
                close(prg)
                return
            end


            % Check that the parameters look ok
            if abs(sum(app.POPGRID.Parameters.DimWts{'Scaled',:}) -1) > 0.00001
                uialert(app.CLAInterpolatorUIFigure,"Weights do not sum to 1",...
                    "NOT READY TO CALC");
                app.Lamp_ParamsOKforPriceRun.Color = [1,0,0];

                % Update NearbyPointNotes
                app.TextArea_NearbyPointNotes.Value = [app.TextArea_NearbyPointNotes.Value;...
                    sprintf('ERROR weights do not sum to 1.')];
                close(prg)
                return


            elseif or(app.POPGRID.Parameters.Smoothing.MinNumPts <1,...
                    app.POPGRID.Parameters.Smoothing.DistWtFactor<1)
                uialert(app.CLAInterpolatorUIFigure,...
                    "Minimum number of points or distance weight factor incorrect.",...
                    "NOT READY TO CALC");
                app.Lamp_ParamsOKforPriceRun.Color = [1,0,0];
            elseif or(app.POPGRID.Parameters.Smoothing.InitAper <0.0001,...
                    app.POPGRID.Parameters.Smoothing.InitAper > 0.9999)
                uialert(app.CLAInterpolatorUIFigure,...
                    "Initial aperture outside of acceptable range.",...
                    "NOT READY TO CALC");
                app.Lamp_ParamsOKforPriceRun.Color = [1,0,0];
            else
                app.Lamp_ParamsOKforPriceRun.Color = [0,1,0];
                % Update NearbyPointNotes
                app.TextArea_NearbyPointNotes.Value = [app.TextArea_NearbyPointNotes.Value;...
                    sprintf('Nearby point analysis parameters OK.')];
            end

                
            % Check that the populated grid looks ok
            % We check that the distances (weighted average distance) has
            % been calculated for the points in the popgrid
            chk = app.POPGRID.POPULATED_GRID.Distances{1,1}(:,2);
            if all(isnan(chk))
                uialert(app.CLAInterpolatorUIFigure,"You have not calculated the distances yet.","NOT READY TO CALC");
                app.Lamp_ParamsOKforPriceRun.Color = [1,0,0];

                % Update NearbyPointNotes
                app.TextArea_NearbyPointNotes.Value = [app.TextArea_NearbyPointNotes.Value;...
                    sprintf('Nearby point analysis attempted before calculating Gower distance.')];
                close(prg)
                return
            else
                app.Lamp_POPGridOKForPricing.Color = [0,1,0];
                % Update NearbyPointNotes
                app.TextArea_NearbyPointNotes.Value = [app.TextArea_NearbyPointNotes.Value;...
                    sprintf('Populated grid looks ok for nearby point analysis.')];
            end

            % Close progress dialog
            close(prg)




        end

        % Button pushed function: Button_MapPrices
        function Button_MapPricesPushed(app, event)
            %
            %
            %
            %
            %
            % ----------------------------------------------------------

            % Progress dialog box
            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                "Icon","AppImages\Icon_01.png",...
                "Indeterminate","on",...
                "Message","Plotting Prices");


            diagnostics = struct();

            % Clear the plot and Nearby Points table
            cla(app.MAP)
            app.UITable_NearbyPoints.Data = [];

            % Get filter from drop downs
            filter_RISK = app.DropDown_Risk.Value;
            filter_COLLAT = app.DropDown_Collateral.Value;
            filter_SIZE = app.DropDown_Size.Value;
            filter_TERM = app.DropDown_Term.Value;
            filter_INDUSTRY = app.DropDown_Industry.Value;
            filter_TYPE = app.DropDown_FacilityType.Value;

            % Filter the grid based on the drop downs
            pogriddisplay = app.POPGRID.POPULATED_GRID;
            idx_RISK = pogriddisplay.RiskCategories == filter_RISK;
            idx_COLLAT = pogriddisplay.CollateralGroups == filter_COLLAT;
            idx_INDUSTRY = pogriddisplay.IndustryGroups == filter_INDUSTRY;
            idx_TYPE = pogriddisplay.FacilityType == filter_TYPE;

            % Loan Size and Term may be continuous, so we need to group
            % there here.
            loanSizes = unique(pogriddisplay.LoanSize);
            idx_LOANSIZE = pogriddisplay.LoanSize == loanSizes(filter_SIZE);

            termvar = app.POPGRID.dimensions.TermCategories.distvar;
            terms = unique(pogriddisplay.(termvar));
            idx_TERMS = pogriddisplay.(termvar) == terms(filter_TYPE);

            % Create Combined index
            idx_full = [idx_RISK,idx_COLLAT,idx_INDUSTRY,idx_TYPE,idx_LOANSIZE,idx_TERMS];
            idx_display = all(idx_full,2);

            % Filter the Populated Grid
            app.POPGRID_display = pogriddisplay(idx_display,:);

            % Loop through POPGRIDDISPLAY and assign all points
            % Set dot size
            sz = 1;

            % Set cmap if its not set already
            maxspread = max(app.POPGRID_display.SPR_calc_wtd);
            minspread = min(app.POPGRID_display.SPR_calc_wtd);
            if isempty(app.Cmap)
                makeColorMap(app,maxspread,minspread);
            end

            % Now we print by location.  A location is a banking area.  Each 
            % location will have a single spread, but many zip codes.  Each point
            % within a location will have the same color (same spread) and the same
            % user data (since it is really the same grid point).
            UD = struct();
            for i = 1:size(app.POPGRID_display,1)
        
                % Get the spread for the location
                SPR = app.POPGRID_display.SPR_calc_wtd(i);

                
                % Get the coordinates associated with the location
                coords = app.POPGRID_display.Coordinates{i};
                lat = coords(:,1);
                lon = coords(:,2);

                % Get the color for the spread
                diff = abs(app.Cmap.SPR-SPR);
                idx_co = diff == min(diff);
                co_rgb = app.Cmap{idx_co,{'R','G','B'}};
                co = repmat(co_rgb,size(lat));
       
                % Get the user data information
                UD.Distances = app.POPGRID_display.NearbyPoints{i};
                UD.DistanceLables = app.POPGRID_display.DistanceLables{i};
                UD.DistanceWts = app.POPGRID_display.DistanceWts{i};
                UD.co_rgb = co_rgb;
                UD.Row = app.POPGRID_display(i,:);


                % Plot
                try
                [~] = geoscatter(app.MAP,lat,lon,sz,co,'filled',...
                    'MarkerFaceAlpha',0.3,...
                    'MarkerEdgeAlpha',0.3,...
                    'ButtonDownFcn',@clickPoint,...                    
                    'UserData',UD);
                 hold(app.MAP,"on");
                catch ME
                    diagnostics_plot = struct();
                    diagnostics_plot.lat = lat;
                    diagnostics_plot.lon = lon;
                    assignin('base',"diagnostics_plot",diagnostics_plot);
                    rethrow(ME)
                end
               
        
            end

            hold(app.MAP,"off");
            latlim = [24 50];
            lonlim = [-126 -66];
            geolimits(app.MAP,latlim,lonlim)
            %disableDefaultInteractivity(app.MAP)


            % Output diagnostics
            diagnostics.filter_RISK = filter_RISK;
            diagnostics.filter_COLLAT = filter_COLLAT;
            diagnostics.filter_SIZE = filter_SIZE;
            diagnostics.filter_TERM = filter_TERM;
            diagnostics.filter_INDUSTRY = filter_INDUSTRY;app.GRID
            diagnostics.filter_TYPE = filter_TYPE;
            diagnostics.POPGRID_display = app.POPGRID_display;
            diagnostics.idx_display = idx_display;
            diagnostics.idx_full = idx_full;

            % Close the progress dialog
            close(prg)

            % FUNCTION TO RUN WHEN DOT IS CLICKED
            % -------------------------------------------------------------
            function clickPoint(src,event)


                % Progress bar
                f = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                    'Message',"Updating Nearby Point Information");

                % Get the point's user data
                src.UserData

                % Display the weighted average spread (calculated) on the
                % selected point.
                app.EditField_SpreadSelected.Value = src.UserData.Row.SPR_calc_wtd;

                % Display the average distance to the selected point.
                app.EditField_WtgAvgDistSelected.Value = src.UserData.Row.avgDIST;

                % Display the Confidence Score
                app.EditField_ConfidenceScore.Value = num2str(src.UserData.Row.confidenceSCALED);

                % Display the number of nearby points
                app.EditField_numpts.Value = src.UserData.Row.nOBS_used;

                % Get the nearby points
                ptsmat = src.UserData.Row.NearbyPoints{1,1};
                NBP = array2table(ptsmat,'VariableNames',src.UserData.DistanceLables);
                NBP = sortrows(NBP,{'DistanceWtd'},'ascend');

                % Put the nearby points in the nearby points table
                app.UITable_NearbyPoints.Data = NBP{:,:};
                app.UITable_NearbyPoints.ColumnWidth = app.GridLayout_NBPTable.ColumnWidth;

                close(f)

            end




        end

        % Button pushed function: CheckDataButton
        function CheckDataButtonPushed(app, event)
            %
            %
            %
            %
            %
            %
            % ---------------------------------------------------------

            % Progress Diaglog
            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                "Icon","AppImages\Icon_01.png",...
                "Indeterminate","on",...
                "Message","Checking Loaded data. Getting historical observations...");

            % Set up diagnostics structure
            diagnostics = struct();

            % Data Notes
            app.TextArea_DataNotes.Value = "RUNNING DATA CHECKS.";
            drawnow()

            % Get Historical Data
            fprintf('getting historical data...')
            TAB = app.DATA.CLA_DB.H;
            fprintf('got it.\n')
            prg.Message = "Generating data validation reports...";

            % Data Notes
            msg = sprintf('\n\n***\n%.0f observations in total.',size(TAB,1));
            app.TextArea_DataNotes.Value = strcat(app.TextArea_DataNotes.Value,msg);
            drawnow()
            
            % Identify Loans Removed For no SinglePricePoint
            %
            matchvars ={'L_Bank_ID','L_file_date','L_borrower_ID','L_spread_bps'};
            SPID_0 = TAB(TAB.PriceDecisionID == 0,:);
            D = TAB(TAB.PriceDecisionID ~= 0,:);
            diagnostics.NoSinglePriceDecision = TAB(TAB.PriceDecisionID ==0,:);
            msg = {sprintf(['%.0f observations removed due to no pricing decision ID. ' ...
                'This could be because of missing spread (pricing) variable, missing ' ...
                'bank ID, or missing effective date.'],sum(TAB.PriceDecisionID==0))};
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;...
                {'';'***'};msg];
            drawnow()
            
            % Check that the IDs Match
            % Facility ID matches from Loan Table to Facility Table
            CHK_FacilityIDMatch = all(D.L_Facility_ID == D.F_Facility_ID);
            if CHK_FacilityIDMatch
                msg = sprintf('Successful facility ID match from Loan to Facility data.');
            else
                msg = sprintf('ERROR: bad facility ID match from Loan to Facility data.');
            end
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;...
                {'';'***'};msg];
            drawnow()            
            
            % Borrower ID matches from Loan Table to Borrower Table (facility borrower
            % ID will not match)
            CHK_BorrowerIDMatch = all(D.L_borrower_ID == D.B_borrower_ID);
            if CHK_BorrowerIDMatch
                msg = sprintf('Successful borrower ID match from Loan to borrower data.');
            else
                msg = sprintf('ERROR: bad borrower ID match from Loan to borrower data.');
            end
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;...
                {'';'***'};msg];
            drawnow()

            % Different Terms
            % The Facility effective date and maturity dates are different from the
            % loan effective dates and maturity dates
            D.TERM_F = calmonths(...
                between(datetime(D.F_Facility_Effective_Date,'convertfrom','DateNum'),...
                datetime(D.F_Facility_Maturity_Date,'convertfrom','DateNum'),'months'));
            D.TERM_L = calmonths(...
                between(datetime(D.L_loan_effective_date,'convertfrom','DateNum'),...
                datetime(D.L_loan_maturity_date,'convertfrom','DateNum'),'months'));
            idx_TermsDontMatch = D.TERM_F ~=D.TERM_L;

            % Data Notes
            msg = {sprintf(['\n***\nIn %.0f records (%.0f%%) the term from loan data does not ' ...
                'match term from facility data.'],...
                sum(idx_TermsDontMatch),100*sum(idx_TermsDontMatch)/length(idx_TermsDontMatch))};
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;...
                msg];
            drawnow()            
            
            
            % SPREAD
            Dflt = D(D.L_pricing_structure == 2,:);
            [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
            BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardSPREADS(Dflt);
            fn = strcat(app.SETTINGS.settings.DATAFilePath,"\SPREADS");
            CLA_DataDashboard_01(...
                'DashboardFilen',fn,...
                'NotesLeftTitle',NOTESLEFTTITLE,...
                'NotesLeftData',NOTESLEFTDATA,...
                'ChartLeft',LEFTCHART,...
                'ChartLeftTitle',LEFTCHARTTITLE,...
                'ChartRight',RIGHTCHART,...
                'ChartRightTitle',RIGHTCHARTTITLE,...
                'ChartBottomRight',BOTTOMRIGHTCHART,...
                'ChartBottomRightTitle',BOTTOMRIGHTCHARTTITLE,...
                'DashboardTitle',DASHBOARDTITLE,...
                'DashboardSubTitle',DASHBOARDsubTITLE)
            
            % SWAP RATE
            Dfixed = D(D.L_pricing_structure == 1,:);
            if strcmpi(app.SwapTo,"SOFR")
                [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
                BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardSWAPRATES(Dfixed);
            else
                [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
                BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardSWAPRATES_LIBOR(Dfixed);
            end
            fn = strcat(app.SETTINGS.settings.DATAFilePath,"\SWAPRATES");
            CLA_DataDashboard_01(...
                'DashboardFilen',fn,...
                'NotesLeftTitle',NOTESLEFTTITLE,...
                'NotesLeftData',NOTESLEFTDATA,...
                'ChartLeft',LEFTCHART,...
                'ChartLeftTitle',LEFTCHARTTITLE,...
                'ChartRight',RIGHTCHART,...
                'ChartRightTitle',RIGHTCHARTTITLE,...
                'ChartBottomRight',BOTTOMRIGHTCHART,...
                'ChartBottomRightTitle',BOTTOMRIGHTCHARTTITLE,...
                'DashboardTitle',DASHBOARDTITLE,...
                'DashboardSubTitle',DASHBOARDsubTITLE)
            
            
            % FIXED RATE
            Dfixed = D(D.L_pricing_structure == 1,:);
            [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
            BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardFIXEDRATES(Dfixed);
            fn = strcat(app.SETTINGS.settings.DATAFilePath,"\FIXED_RATES");
            CLA_DataDashboard_01(...
                'DashboardFilen',fn,...
                'NotesLeftTitle',NOTESLEFTTITLE,...
                'NotesLeftData',NOTESLEFTDATA,...
                'ChartLeft',LEFTCHART,...
                'ChartLeftTitle',LEFTCHARTTITLE,...
                'ChartRight',RIGHTCHART,...
                'ChartRightTitle',RIGHTCHARTTITLE,...
                'ChartBottomRight',BOTTOMRIGHTCHART,...
                'ChartBottomRightTitle',BOTTOMRIGHTCHARTTITLE,...
                'DashboardTitle',DASHBOARDTITLE,...
                'DashboardSubTitle',DASHBOARDsubTITLE)
            
            % LOAN SIZE
            [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
            BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] =...
            dataDashboardLOANSIZE(D);
            
            % Make Dashboard
            fn = strcat(app.SETTINGS.settings.DATAFilePath,"\LOAN_SIZES");
            CLA_DataDashboard_01(...
                'DashboardFilen',fn,...
                'NotesLeftTitle',NOTESLEFTTITLE,...
                'NotesLeftData',NOTESLEFTDATA,...
                'ChartLeft',LEFTCHART,...
                'ChartLeftTitle',LEFTCHARTTITLE,...
                'ChartRight',RIGHTCHART,...
                'ChartRightTitle',RIGHTCHARTTITLE,...
                'ChartBottomRight',BOTTOMRIGHTCHART,...
                'ChartBottomRightTitle',BOTTOMRIGHTCHARTTITLE,...
                'DashboardTitle',DASHBOARDTITLE,...
                'DashboardSubTitle',DASHBOARDsubTITLE)
            
            % TERM
            D.TERM = calmonths(...
                between(datetime(D.F_Facility_Effective_Date,'convertfrom','DateNum'),...
                datetime(D.F_Facility_Maturity_Date,'convertfrom','DateNum'),'months'));
            
            [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
            BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardTERM(D);
            fn = strcat(app.SETTINGS.settings.DATAFilePath,"\TERM");
            CLA_DataDashboard_01(...
                'DashboardFilen',fn,...
                'NotesLeftTitle',NOTESLEFTTITLE,...
                'NotesLeftData',NOTESLEFTDATA,...
                'ChartLeft',LEFTCHART,...
                'ChartLeftTitle',LEFTCHARTTITLE,...
                'ChartRight',RIGHTCHART,...
                'ChartRightTitle',RIGHTCHARTTITLE,...
                'ChartBottomRight',BOTTOMRIGHTCHART,...
                'ChartBottomRightTitle',BOTTOMRIGHTCHARTTITLE,...
                'DashboardTitle',DASHBOARDTITLE,...
                'DashboardSubTitle',DASHBOARDsubTITLE)
            
            
            % RISK
            [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
            BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardRISK(D);
            fn = strcat(app.SETTINGS.settings.DATAFilePath,"\RISK RATING");
            CLA_DataDashboard_01(...
                'DashboardFilen',fn,...
                'NotesLeftTitle',NOTESLEFTTITLE,...
                'NotesLeftData',NOTESLEFTDATA,...
                'ChartLeft',LEFTCHART,...
                'ChartLeftTitle',LEFTCHARTTITLE,...
                'ChartRight',RIGHTCHART,...
                'ChartRightTitle',RIGHTCHARTTITLE,...
                'ChartBottomRight',BOTTOMRIGHTCHART,...
                'ChartBottomRightTitle',BOTTOMRIGHTCHARTTITLE,...
                'DashboardTitle',DASHBOARDTITLE,...
                'DashboardSubTitle',DASHBOARDsubTITLE)
            
            % INDUSTRY
            D.NAICS2 = floor(D.B_NAICS_code ./ 10000);
            [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
            BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardINDUSTRY(D);
            fn = strcat(app.SETTINGS.settings.DATAFilePath,"\INDUSTRY");
            CLA_DataDashboard_01(...
                'DashboardFilen',fn,...
                'NotesLeftTitle',NOTESLEFTTITLE,...
                'NotesLeftData',NOTESLEFTDATA,...
                'ChartLeft',LEFTCHART,...
                'ChartLeftTitle',LEFTCHARTTITLE,...
                'ChartRight',RIGHTCHART,...
                'ChartRightTitle',RIGHTCHARTTITLE,...
                'ChartBottomRight',BOTTOMRIGHTCHART,...
                'ChartBottomRightTitle',BOTTOMRIGHTCHARTTITLE,...
                'DashboardTitle',DASHBOARDTITLE,...
                'DashboardSubTitle',DASHBOARDsubTITLE)
            
            % Geography
            LocationDatabase = app.DATA.TAXONOMYTABS.LocationDatabase;
            [ina_location,locb_location] = ismember(D.B_Zipcode,LocationDatabase.zip_numeric);
            D.STATE(ina_location) = LocationDatabase.Location_s_NumberState(locb_location(ina_location));
            [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
            BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardLOCATION(D);
            fn = strcat(app.SETTINGS.settings.DATAFilePath,"\LOCATION");
            CLA_DataDashboard_01(...
                'DashboardFilen',fn,...
                'NotesLeftTitle',NOTESLEFTTITLE,...
                'NotesLeftData',NOTESLEFTDATA,...
                'ChartLeft',LEFTCHART,...
                'ChartLeftTitle',LEFTCHARTTITLE,...
                'ChartRight',RIGHTCHART,...
                'ChartRightTitle',RIGHTCHARTTITLE,...
                'ChartBottomRight',BOTTOMRIGHTCHART,...
                'ChartBottomRightTitle',BOTTOMRIGHTCHARTTITLE,...
                'DashboardTitle',DASHBOARDTITLE,...
                'DashboardSubTitle',DASHBOARDsubTITLE)
            msg = {sprintf('\n***\n%.0f records had invalid or missing zip codes.',sum(~ina_location))};
            app.TextArea_DataNotes.Value = [app.TextArea_DataNotes.Value;...
                msg];
            drawnow()       

            
            
            % Collateral
            [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
            BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardCOLLATERAL(D);
            fn = strcat(app.SETTINGS.settings.DATAFilePath,"\COLLATERAL");
            CLA_DataDashboard_01(...
                'DashboardFilen',fn,...
                'NotesLeftTitle',NOTESLEFTTITLE,...
                'NotesLeftData',NOTESLEFTDATA,...
                'ChartLeft',LEFTCHART,...
                'ChartLeftTitle',LEFTCHARTTITLE,...
                'ChartRight',RIGHTCHART,...
                'ChartRightTitle',RIGHTCHARTTITLE,...
                'ChartBottomRight',BOTTOMRIGHTCHART,...
                'ChartBottomRightTitle',BOTTOMRIGHTCHARTTITLE,...
                'DashboardTitle',DASHBOARDTITLE,...
                'DashboardSubTitle',DASHBOARDsubTITLE)
            
            % Interest Rates
            rates = defRatesTab();
            for r = 1:size(rates,1)
                indexids = rates.IndexIDs{r};
                Index = rates.Index{r};
                idx_indexids = ismember(D.L_Index,indexids);
                D.RATETYPE(idx_indexids) =string(Index);
            end
            
            idx_fixed = D.L_pricing_structure == 1;
            D.RATETYPE(idx_fixed) = "Fixed";
            D.RATETYPE = categorical(D.RATETYPE);
            [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
            BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardRATES(D);
            fn = strcat(app.SETTINGS.settings.DATAFilePath,"\RATES");
            CLA_DataDashboard_01(...
                'DashboardFilen',fn,...
                'NotesLeftTitle',NOTESLEFTTITLE,...
                'NotesLeftData',NOTESLEFTDATA,...
                'ChartLeft',LEFTCHART,...
                'ChartLeftTitle',LEFTCHARTTITLE,...
                'ChartRight',RIGHTCHART,...
                'ChartRightTitle',RIGHTCHARTTITLE,...
                'ChartBottomRight',BOTTOMRIGHTCHART,...
                'ChartBottomRightTitle',BOTTOMRIGHTCHARTTITLE,...
                'DashboardTitle',DASHBOARDTITLE,...
                'DashboardSubTitle',DASHBOARDsubTITLE)

            close(prg)




        end

        % Button pushed function: Button_SetSmoothParams
        function Button_SetSmoothParamsPushed(app, event)
            %
            %
            %
            %
            %
            %
            %

            % Clear the plot and Nearby Points table
            cla(app.MAP)
            app.UITable_NearbyPoints.Data = [];

            % Turn Lamps Grey
            app.Lamp_ParamsOKforPriceRun.Color = [0.9 0.9 0.9];
            app.Lamp_POPGridOKForPricing.Color = [0.9 0.9 0.9];

            % Set the Smoothing Parameters
            app.POPGRID.Parameters.Smoothing.MinNumPts = app.EditField_MinReqPoints_Test.Value;
            app.POPGRID.Parameters.Smoothing.InitAper = app.EditField_StartDistThresh_Test.Value;
            app.POPGRID.Parameters.Smoothing.DistWtFactor = app.EditField_DistWtFact_Test.Value;
            app.POPGRID.Parameters.ConfScorDistWt = app.EditField_ConfFactorDistWt_TEST.Value;

            uialert(app.CLAInterpolatorUIFigure,...
                'smoothing parameters loaded.',...
                "SMOOTHING PARAMETERS LOADED","Icon","AppImages\Icon_01.png");



        end

        % Value changed function: NewDWFSlider
        function NewDWFSliderValueChanged(app, event)
            %
            %
            %
            %
            %
            %

            % Slider for visualizing changes to the weighting factor
            % Show the updated factor
            changingValue = event.Value;
            testwtfactor = round(changingValue,3);
            app.EditField_DistWtFact_Test.Value = testwtfactor;

            % Add a line to the figure
            app.DistWtLine.YData = ones([1,100])./linspace(1,testwtfactor,100);


            
        end

        % Button pushed function: Button_LoadPortfolio
        function Button_LoadPortfolioPushed(app, event)
            %
            %
            % Pull In Data For Portfolio Pricing
            %
            %
            %
            %


            % Check to make sure that the user has already uploaded
            % observation data.
            if ~isfield(app.DATA,'CLA_DB')
                msg = "Please load observation data prior to loading a " + ...
                    "portfolio (to price a portfolio you need to have " + ...
                    "observation data for comparison). There is no DATA.CLA_DB";
                uialert(app.CLAInterpolatorUIFigure,msg,"NO OBSERVATION DATA")
                return
            end
            if isempty(app.DATA.CLA_DB)
                msg = "Please load observation data prior to loading a " + ...
                    "portfolio (to price a portfolio you need to have " + ...
                    "observation data for comparison). DATA.CLA_DB is empty";
                uialert(app.CLAInterpolatorUIFigure,msg,"NO OBSERVATION DATA")
                return
            end


            % Load in portfolio data.
            Button_UpdateDataPushed(app, event);
            if ~isfield(app.DATA,'PORT')
                msg = [app.TextArea_DataNotes.Value;{sprintf('Portfolio NOT Uploaded.')}];
                app.TextArea_DataNotes.Value = msg;
                return
            end
            if isempty(app.DATA.PORT)
                msg = [app.TextArea_DataNotes.Value;{sprintf('Portfolio NOT Uploaded.')}];
                app.TextArea_DataNotes.Value = msg;
                return
            end
            if ~isa(app.DATA.PORT,"table")
                msg = [app.TextArea_DataNotes.Value;{sprintf('Portfolio NOT Uploaded.')}];
                app.TextArea_DataNotes.Value = msg;
                return
            end

            msg = [app.TextArea_DataNotes.Value;{sprintf('Portfolio Uploaded.')}];
            app.TextArea_DataNotes.Value = msg;


            % Set up progress Dialog
            msg = sprintf('creating grid from portfolio');
            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                "Indeterminate","on",...
                "Icon","AppImages\Logo_01.png",...
                "Message",msg);


            % Create a default Basic Grid
            GRID = CLAgrid(app.DATA.TAXONOMYTABS);
            msg = [app.TextArea_DataNotes.Value;{sprintf('standard grid Created from Portfolio.')}];
            app.TextArea_DataNotes.Value = msg;

            % GRID Geographies
            [~,TFull,~,~] = defGeographyTable(app.DATA.TAXONOMYTABS.LocationDatabase,...
                'LocNameVars',{'Location_r_NameRegion','Location_Fed_NameFedBranch','Location_mr_NameMetroRural'});
            GRID.Geographies = TFull;
            msg = [app.TextArea_DataNotes.Value;{sprintf('Standard geographies built.')}];
            app.TextArea_DataNotes.Value = msg;


            % OBS
            % Create an observation set from the Full Observation data (CLA_DB) not
            % just the portfolio.  The portfolio will be priced against the full set of
            % observations.
            fdtab = app.DATA.CLA_DB.fileDatesTab;
            filedate = max(fdtab.FileDates);
            [~, OBS_FULL, ~] = GimmeOBS(app.DATA.CLA_DB,GRID,filedate);
            
            % Add the OBS_ID field (this gets added into the OBS table in the OBS
            % property of the POPGRID, which we are not using for the portfolio.
            OBS_FULL.OBS_ID = [1:size(OBS_FULL,1)]';
            OBS_FULL = movevars(OBS_FULL, "OBS_ID", "Before", 1);
            msg = [app.TextArea_DataNotes.Value;{sprintf('Full observations table built.')}];
            app.TextArea_DataNotes.Value = msg;



            % Create the REQTABLE for the Grid.
            % Start by using the make_REQTABLE method, then change the REQTABLE using
            % the Portfolio Data
            %
            
            % Create a Basic REQTABLE for the GRID
            GRID = GRID.make_REQTABLE;
            
            % Loan Size
            app.DATA.PORT.Properties.VariableNames('F_Commitment_Amount') = {'LoanSize'};
            
            % Term 
            % Term is calculated in the input transformation programs (can either use
            % TermMonths or EstimatedTerm)
            
            % RiskCategories
            app.DATA.PORT.Properties.VariableNames('B_Risk_Rating') = {'RiskCategories'};
            
            % CollateralGroups
            for c = 1:size(GRID.CollateralGroups,1)
                ids = GRID.CollateralGroups.SecurityCategoryIDs{c}{:};
                idx_collateral = ismember(app.DATA.PORT.L_Collateral_Type,ids);
                app.DATA.PORT.CollateralGroups(idx_collateral) = GRID.CollateralGroups.SecGID(c);
            end
            
            % Add Geographical Fields
            [ina_locDatabase,loc_locDatabase] = ismember(app.DATA.PORT.B_Zipcode,app.DATA.TAXONOMYTABS.LocationDatabase.zip_numeric);
            app.DATA.PORT.Location_r_NumberRegion(ina_locDatabase) = app.DATA.TAXONOMYTABS.LocationDatabase.Location_r_NumberRegion(loc_locDatabase(ina_locDatabase));
            app.DATA.PORT.Location_Fed_NumberFedBranch(ina_locDatabase) = app.DATA.TAXONOMYTABS.LocationDatabase.Location_Fed_NumberFedBranch(loc_locDatabase(ina_locDatabase));
            app.DATA.PORT.Location_mr_NumberMetroRural(ina_locDatabase) = app.DATA.TAXONOMYTABS.LocationDatabase.Location_mr_NumberMetroRural(loc_locDatabase(ina_locDatabase));
            app.DATA.PORT.Geographies = [app.DATA.PORT.Location_r_NumberRegion, app.DATA.PORT.Location_Fed_NumberFedBranch, app.DATA.PORT.Location_mr_NumberMetroRural] ;
            
            % Add Lag field
            app.DATA.PORT.Lag = zeros(size(app.DATA.PORT,1),1);
            
            % Add Facility Type
            app.DATA.PORT.FacilityType = app.DATA.PORT.L_Loan_Type;
            
            % Create Industry Groups
            indtab = defIndustryTab();
            app.DATA.PORT.NAICS2 = floor(app.DATA.PORT.B_NAICS_code ./ 10000);
            app.DATA.PORT.IndustryGroups = NaN(size(app.DATA.PORT,1),1);
            for g = 1:size(indtab,1)
                grpnum = indtab.IndGrpID(g);
                grpNAICS2s = indtab.NAICS2s{g};
                idx_ingrp = ismember(app.DATA.PORT.NAICS2,grpNAICS2s)';
                app.DATA.PORT.IndustryGroups(idx_ingrp) = grpnum;
            end
            clearvars g grpnum grpNAICS2s idx_ingrp
            
            % Set REQTABLE
            reqtablevars = {'Geographies','IndustryGroups','CollateralGroups',...
                'LoanSize','RiskCategories','TermMonths','FacilityType'};
            reqtable = app.DATA.PORT(:,reqtablevars);
            [GRID.REQTABLE,ia,ic] = unique(reqtable);
            
            % Add Lag (Lag in the Reqtable is always set to zero)
            GRID.REQTABLE.Lag = zeros(size(GRID.REQTABLE,1),1);
            msg = [app.TextArea_DataNotes.Value;{sprintf('REQTABLE built for portfolio.')}];
            app.TextArea_DataNotes.Value = msg;
            
            % POPGRID
            POPGRID = CLApopulatedGrid(GRID);
            
            % Replace POPULATED_GRID with REQTABLE
            % Add additional populated grid variables
            POPGRID.POPULATED_GRID = GRID.REQTABLE;
            POPGRID.POPULATED_GRID.Distances = cell(size(POPGRID.POPULATED_GRID,1),1);
            POPGRID.POPULATED_GRID.DistanceLables = cell(size(POPGRID.POPULATED_GRID,1),1);
            POPGRID.POPULATED_GRID.DistanceWts = cell(size(POPGRID.POPULATED_GRID,1),1);
            POPGRID.POPULATED_GRID.WtAvgDistance = NaN(size(POPGRID.POPULATED_GRID,1),1);
            
            % Use the full observation dataset for the OBS in the portfolio POPGRID
            POPGRID.OBS = OBS_FULL;
            msg = [app.TextArea_DataNotes.Value;{sprintf('POPGRID created.')}];
            app.TextArea_DataNotes.Value = msg;

            % Set the dimensions in POPGRID
            defDimensions = defDimensionsStruct();
            defDimensions.TermCategories.distvar = 'TermMonths';
            defDimensions.TermCategories.gridvar = 'TermMonths';
            POPGRID.dimensions = defDimensions;
            msg = [app.TextArea_DataNotes.Value;{sprintf('Dimensions set (TermMonths).')}];
            app.TextArea_DataNotes.Value = msg;

            % Calculate individual Dimensional distances
            ptsdone = app.tempdata;            
            drawnow
            prg.Message = sprintf("Calculating single dimension distances.  This can " + ...
                "take some time depending on the size of the portfolio. %.0f",ptsdone);
            POPGRID = POPGRID.CalculateDistances;
            app.POPGRID = POPGRID;
            app.GRID = GRID;
            msg = [app.TextArea_DataNotes.Value;{sprintf('distances calculated (go to CALCULATE PRICES).')}];
            app.TextArea_DataNotes.Value = msg;
            close(prg)


            % Disable certain features on the calculate Prices Tab (Nearby
            % Point Analysis)
            app.DropDown_Risk.Enable = 'off';
            app.DropDown_Collateral.Enable = 'off';
            app.DropDown_Size.Enable = 'off';
            app.DropDown_Term.Enable = 'off';
            app.DropDown_Industry.Enable = 'off';
            app.DropDown_FacilityType.Enable = 'off';
            app.Button_MapPrices.Enable = 'off';
            app.Panel_Map.Enable = 'off';
            app.UITable_NearbyPoints.Enable = 'off';
            app.EditField_SpreadSelected.Enable = 'off';
            app.EditField_numpts.Enable = 'off';
            app.EditField_WtgAvgDistSelected.Enable = 'off';
            app.EditField_ConfidenceScore.Enable = 'off';





        end

        % Menu selected function: Menu_ExportGridtotxt, 
        % ...and 2 other components
        function Menu_ExportGridtotxtSelected(app, event)
            %
            %
            %
            %
            %

            event.Source

            % check that the grid is populated
            if isempty(app.POPGRID)
                msg = sprintf('Pricing grid not populated yet. POPGRID empty.');
                uialert(app.CLAInterpolatorUIFigure,msg,"NO GRID","Icon","AppImages\Logo_01.png");
                return
            end

            if ~ismember({'confidence'},app.POPGRID.POPULATED_GRID.Properties.VariableNames)
                msg = sprintf('Pricing grid not populated yet.');
                uialert(app.CLAInterpolatorUIFigure,msg,"NO GRID","Icon","AppImages\Logo_01.png");
                return
            end

            % Get a file location from the user
            app.CLAInterpolatorUIFigure.WindowState = 'minimized';
            pathn_exp = uigetdir(pwd,"Select the LOAN Data File (.txt file)");
            app.CLAInterpolatorUIFigure.WindowState = 'normal';
            if pathn_exp == 0
                uialert(app.CLAInterpolatorUIFigure,'No path selected','NO PATH','Icon','AppImages\Icon_01.png');
                return
            end

            % Find out which menu was selected
            exportType = event.Source.Text;


            % Depending on the selected file to export (based on the menu 
            % item that is being run), name the exported file. 
            try
                if contains(exportType,"Export Grid")
                    filen = sprintf("EXPORTGRID%.0f.txt",floor(100000 * (now() - 739598)));
                elseif contains(exportType, "Export Obs")
                    filen = sprintf("OBSERVATIONS%.0f.txt",floor(100000 * (now() - 739598)));
                elseif contains(exportType, "Portfolio")
                    filen = sprintf("PORTFOLIO%.0f.txt",floor(100000 * (now() - 739598)));
                end
                fn_exp = strcat(string(pathn_exp),"/",filen);

                taxfilen = sprintf("taxonomy%.0f.xlsx",floor(100000 * (now() - 739598)));
                taxfn_exp = strcat(string(pathn_exp),"/",taxfilen);

            catch ME
                rethrow(ME)
            end
            app.CLAInterpolatorUIFigure.WindowState = "normal";


            % Depending on the selected export, create the exported table
            if contains(exportType,"Export Grid")
                % Export the grid table
                Exptab = app.POPGRID.POPULATED_GRID;
                vars2exclude = {'Distances','DistanceLables','DistanceWts','SpreadRange','NearbyPoints','ZipCodes','Coordinates','WtAvgDistance'};
                vars2include = setdiff(Exptab.Properties.VariableNames,vars2exclude);
                outtab = Exptab(:,vars2include);

            elseif contains(exportType, "Export Obs")
                % Export the Observation table
                Exptab = app.POPGRID.OBS;
                outtab = Exptab(:,:);

            elseif contains(exportType, "Portfolio")

                if ~isfield(app.DATA,"PORT")
                    msg = "no portfolio loaded, cannot export.";
                    uialert(app.CLAInterpolatorUIFigure,msg,"ERROR",...
                        "Icon","AppImages\Icon_01.png")
                    return
                end

                % Export the Grid associated with the portfolio table
                Exptab = app.POPGRID.POPULATED_GRID;
                vars2exclude = {'Distances','DistanceLables','DistanceWts','SpreadRange','NearbyPoints','ZipCodes','Coordinates','WtAvgDistance'};
                vars2include = setdiff(Exptab.Properties.VariableNames,vars2exclude);
                outtab = Exptab(:,vars2include);
            end
            
            % Write grid table
            outfilen = fn_exp;
            if exist(outfilen,"file")
                delete(outfilen)
            end
            writetable(outtab,outfilen)
            
            % Write spreadsheet holding taxonomy tables
            outtaxfilen = taxfn_exp;
            if exist(outtaxfilen,"file")
                delete(outtaxfilen)
            end
            
            % Geographies
            outsheetn = 'GEOGRAPHIES';
            t = app.POPGRID.GRID.Geographies;
            writetable(t,outtaxfilen,'Sheet',outsheetn)
            clearvars t outsheetn

            % CollateralGroups
            t = table();
            cgtab = app.POPGRID.GRID.CollateralGroups;
            for r = 1:size(cgtab,1)
                row = cgtab(r,{'SecGID','SecurityGroup'});
                tbl = repmat(row,size(cgtab.SecurityTypes{r},1),1);
                tbl.SecurityTypes = cgtab.SecurityTypes{r};
                t = [t;tbl];
            end
            outsheetn = 'COLLATERAL';
            writetable(t,outtaxfilen,'Sheet',outsheetn)
            clearvars t outsheetn cgtab r row tbl t


            % IndustryGroups
            t = table();
            indtab = app.POPGRID.GRID.IndustryGroups;
            for r = 1:size(indtab,1)
                row = indtab(r,{'IndGrpID','IndGrpName'});
                tbl = repmat(row,size(indtab.NAICSIndustries{r},1),1);
                tbl.NAICS2s = indtab.NAICS2s{r}';
                t = [t;tbl];
            end
            outsheetn = 'INDUSTRY';
            writetable(t,outtaxfilen,'Sheet',outsheetn)
            clearvars t outsheetn indtab r row tbl t


            % Turn Lamps Grey
            app.Lamp_ParamsOKforPriceRun.Color = [0.9 0.9 0.9];
            app.Lamp_POPGridOKForPricing.Color = [0.9 0.9 0.9];












        end

        % Callback function
        function ButtonPushed(app, event)
            LoadSettings(app)
        end

        % Button pushed function: Button_UpdateUSTdata
        function Button_UpdateUSTdataPushed(app, event)
            %
            % Update the Treasury Data found in the DATA file.
            %
            %
            %
            %
            
            % Get the (.csv) File to upload
            % Get the file names and locations for the treasury data
            msg = sprintf(['Update the Treasury Data:\nSelect a ' ...
                'comma separated text file (.csv) with treasury data from ' ...
                'your file system.']);
            tit = sprintf('GET FILE TO LOAD');
            s = uiconfirm(app.CLAInterpolatorUIFigure,msg,tit,...
                "Icon","AppImages\Icon_01.png",...
                "Options",["OK"]);
            app.CLAInterpolatorUIFigure.WindowState = 'minimized';
            [filen,pathn] = uigetfile({'*.*'},"Select the treasury Data File (.csv file)");
            app.CLAInterpolatorUIFigure.WindowState = 'normal';

            % If the user cancels
            if or(isnumeric(pathn),isnumeric(filen))
                disp(pathn)
                disp(filen)
                app.CLAInterpolatorUIFigure.WindowState = "normal";
                app.CLAInterpolatorUIFigure.WindowStyle = "alwaysontop";
                [~] = uiconfirm(app.CLAInterpolatorUIFigure,'no file selected','NO FILE',...
                    "Options",{'OK'},...
                    "Icon","AppImages\Icon_01.png");
                return
            end
            
            app.CLAInterpolatorUIFigure.WindowState = "normal";
            app.CLAInterpolatorUIFigure.WindowStyle = "alwaysontop";



            % Pull in Data from the .csv file
            tfilen = strcat(pathn,filen);
            tic
            prg = uiprogressdlg(app.CLAInterpolatorUIFigure,...
                "Indeterminate","on",...
                "Icon","AppImages\Icon_01.png",...
                "Message","Loading Treasury Data...");
            try
                YearTreasury = importTreasuries(tfilen, [2, Inf]);
            catch
                msg = 'treasury import failed, likely because import file is in incorrect format.';
                [~] = uiconfirm(app.CLAInterpolatorUIFigure,msg,'ERROR',...
                    "Options",{'OK'},...
                    "Icon","AppImages\Icon_01.png");
                return
            end

            %YearTreasury = importTreasuries("F:\Massachusetts Analytics\Clients & Products\GA\GA - CLA InterpPlus\Phase 2\1YearTreasury.csv", [2, Inf]);
            pause(2-toc)
            msg = [app.TextArea_DataNotes.Value;{sprintf('Treasury Data Loaded.')}];
            app.TextArea_DataNotes.Value = msg;
            prg.Message = "loaded.";
            pause(0.5)
            YearTreasury(isnan(YearTreasury.DGS1),:) = [];
            YearTreasury.MONTH = datenum(year(YearTreasury.DATE),month(YearTreasury.DATE),eomday(year(YearTreasury.DATE),month(YearTreasury.DATE)));
            msg = [app.TextArea_DataNotes.Value;{sprintf('transformations to treasury data complete.')}];
            app.TextArea_DataNotes.Value = msg;
            pause(0.5)

            % Store treasury data
            app.DATA.YearTreasury = YearTreasury;

            % Save treasury data in the DATA.mat file
            prg.Message = "Saving uploaded treasury data.";
            fn = strcat(app.SETTINGS.settings.DATAFilePath,"\DATA.mat");
            save(fn,'-append',"YearTreasury")
            prg.Message = "done.";
            pause(0.5)
            close(prg)
            



        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create CLAInterpolatorUIFigure and hide until all components are created
            app.CLAInterpolatorUIFigure = uifigure('Visible', 'off');
            app.CLAInterpolatorUIFigure.Color = [1 1 1];
            app.CLAInterpolatorUIFigure.Position = [100 100 647 569];
            app.CLAInterpolatorUIFigure.Name = 'CLA Interpolator';
            app.CLAInterpolatorUIFigure.Icon = fullfile(pathToMLAPP, 'AppImages', 'Icon_01.png');
            app.CLAInterpolatorUIFigure.WindowStyle = 'alwaysontop';

            % Create ExportMenu
            app.ExportMenu = uimenu(app.CLAInterpolatorUIFigure);
            app.ExportMenu.Text = 'Export';

            % Create Menu_ExportGridtotxt
            app.Menu_ExportGridtotxt = uimenu(app.ExportMenu);
            app.Menu_ExportGridtotxt.MenuSelectedFcn = createCallbackFcn(app, @Menu_ExportGridtotxtSelected, true);
            app.Menu_ExportGridtotxt.Text = 'Export Grid to .txt';

            % Create Menu_ExportObsDatatotxt
            app.Menu_ExportObsDatatotxt = uimenu(app.ExportMenu);
            app.Menu_ExportObsDatatotxt.MenuSelectedFcn = createCallbackFcn(app, @Menu_ExportGridtotxtSelected, true);
            app.Menu_ExportObsDatatotxt.Text = 'Export Obs Data to .txt';

            % Create Menu_ExportPortfoliototxt
            app.Menu_ExportPortfoliototxt = uimenu(app.ExportMenu);
            app.Menu_ExportPortfoliototxt.MenuSelectedFcn = createCallbackFcn(app, @Menu_ExportGridtotxtSelected, true);
            app.Menu_ExportPortfoliototxt.Text = 'Export Portfolio to .txt';

            % Create GridLayout
            app.GridLayout = uigridlayout(app.CLAInterpolatorUIFigure);
            app.GridLayout.ColumnWidth = {'1x'};
            app.GridLayout.RowHeight = {'4x', '40x', '3x'};
            app.GridLayout.BackgroundColor = [1 1 1];

            % Create GridLayout2
            app.GridLayout2 = uigridlayout(app.GridLayout);
            app.GridLayout2.ColumnWidth = {'10x', '1x', '2x'};
            app.GridLayout2.RowHeight = {'2x'};
            app.GridLayout2.ColumnSpacing = 7;
            app.GridLayout2.RowSpacing = 0;
            app.GridLayout2.Padding = [0 0 0 0];
            app.GridLayout2.Layout.Row = 1;
            app.GridLayout2.Layout.Column = 1;
            app.GridLayout2.BackgroundColor = [1 1 1];

            % Create PricingGridInterpolatorVisualizationAdjustmentToolLabel
            app.PricingGridInterpolatorVisualizationAdjustmentToolLabel = uilabel(app.GridLayout2);
            app.PricingGridInterpolatorVisualizationAdjustmentToolLabel.WordWrap = 'on';
            app.PricingGridInterpolatorVisualizationAdjustmentToolLabel.FontSize = 18;
            app.PricingGridInterpolatorVisualizationAdjustmentToolLabel.Layout.Row = 1;
            app.PricingGridInterpolatorVisualizationAdjustmentToolLabel.Layout.Column = 1;
            app.PricingGridInterpolatorVisualizationAdjustmentToolLabel.Text = 'Pricing Grid Interpolator Visualization & Adjustment Tool';

            % Create Image
            app.Image = uiimage(app.GridLayout2);
            app.Image.Layout.Row = 1;
            app.Image.Layout.Column = 3;
            app.Image.ImageSource = fullfile(pathToMLAPP, 'AppImages', 'Logo_02.png');

            % Create GridLayout27
            app.GridLayout27 = uigridlayout(app.GridLayout2);
            app.GridLayout27.ColumnWidth = {'1x'};
            app.GridLayout27.ColumnSpacing = 0;
            app.GridLayout27.RowSpacing = 1;
            app.GridLayout27.Padding = [0 0 0 0];
            app.GridLayout27.Layout.Row = 1;
            app.GridLayout27.Layout.Column = 2;
            app.GridLayout27.BackgroundColor = [1 1 1];

            % Create Label_Version
            app.Label_Version = uilabel(app.GridLayout27);
            app.Label_Version.VerticalAlignment = 'bottom';
            app.Label_Version.WordWrap = 'on';
            app.Label_Version.FontSize = 9;
            app.Label_Version.Layout.Row = 2;
            app.Label_Version.Layout.Column = 1;
            app.Label_Version.Text = '';

            % Create Label_DRAFT
            app.Label_DRAFT = uilabel(app.GridLayout27);
            app.Label_DRAFT.BackgroundColor = [1 0 0];
            app.Label_DRAFT.HorizontalAlignment = 'center';
            app.Label_DRAFT.FontColor = [1 1 1];
            app.Label_DRAFT.Layout.Row = 1;
            app.Label_DRAFT.Layout.Column = 1;
            app.Label_DRAFT.Text = 'DRAFT';

            % Create GridLayout3
            app.GridLayout3 = uigridlayout(app.GridLayout);
            app.GridLayout3.ColumnWidth = {'1x', '3x', '6x', '2x', '3x'};
            app.GridLayout3.RowHeight = {'1x'};
            app.GridLayout3.ColumnSpacing = 7;
            app.GridLayout3.RowSpacing = 0;
            app.GridLayout3.Padding = [0 0 0 0];
            app.GridLayout3.Layout.Row = 3;
            app.GridLayout3.Layout.Column = 1;
            app.GridLayout3.BackgroundColor = [1 1 1];

            % Create Image2
            app.Image2 = uiimage(app.GridLayout3);
            app.Image2.Layout.Row = 1;
            app.Image2.Layout.Column = 1;
            app.Image2.ImageSource = fullfile(pathToMLAPP, 'AppImages', 'MAIcon.png');

            % Create DevelopedbyMassachusettsAnalyticsLabel
            app.DevelopedbyMassachusettsAnalyticsLabel = uilabel(app.GridLayout3);
            app.DevelopedbyMassachusettsAnalyticsLabel.WordWrap = 'on';
            app.DevelopedbyMassachusettsAnalyticsLabel.FontName = 'Century Gothic';
            app.DevelopedbyMassachusettsAnalyticsLabel.FontSize = 10;
            app.DevelopedbyMassachusettsAnalyticsLabel.FontWeight = 'bold';
            app.DevelopedbyMassachusettsAnalyticsLabel.Layout.Row = 1;
            app.DevelopedbyMassachusettsAnalyticsLabel.Layout.Column = 2;
            app.DevelopedbyMassachusettsAnalyticsLabel.Text = {'Developed by'; 'Massachusetts Analytics'};

            % Create Image9
            app.Image9 = uiimage(app.GridLayout3);
            app.Image9.Layout.Row = 1;
            app.Image9.Layout.Column = 5;
            app.Image9.HorizontalAlignment = 'right';
            app.Image9.ImageSource = fullfile(pathToMLAPP, 'AppImages', 'GA_Logo01.png');

            % Create DevelopedforLabel
            app.DevelopedforLabel = uilabel(app.GridLayout3);
            app.DevelopedforLabel.WordWrap = 'on';
            app.DevelopedforLabel.FontName = 'Century Gothic';
            app.DevelopedforLabel.FontSize = 10;
            app.DevelopedforLabel.FontWeight = 'bold';
            app.DevelopedforLabel.Layout.Row = 1;
            app.DevelopedforLabel.Layout.Column = 4;
            app.DevelopedforLabel.Text = 'Developed for';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.GridLayout);
            app.TabGroup.Layout.Row = 2;
            app.TabGroup.Layout.Column = 1;

            % Create DATATab
            app.DATATab = uitab(app.TabGroup);
            app.DATATab.Title = 'DATA';
            app.DATATab.BackgroundColor = [1 1 1];

            % Create GridLayout17
            app.GridLayout17 = uigridlayout(app.DATATab);
            app.GridLayout17.ColumnWidth = {'1x', '1x', '1x', '1x', '3x'};
            app.GridLayout17.RowHeight = {'1x'};
            app.GridLayout17.BackgroundColor = [1 1 1];

            % Create LOADDATAPanel
            app.LOADDATAPanel = uipanel(app.GridLayout17);
            app.LOADDATAPanel.ForegroundColor = [1 1 1];
            app.LOADDATAPanel.Title = 'LOAD DATA';
            app.LOADDATAPanel.BackgroundColor = [0 0.4471 0.7412];
            app.LOADDATAPanel.Layout.Row = 1;
            app.LOADDATAPanel.Layout.Column = [1 4];
            app.LOADDATAPanel.FontWeight = 'bold';
            app.LOADDATAPanel.FontSize = 10;

            % Create GridLayout18
            app.GridLayout18 = uigridlayout(app.LOADDATAPanel);
            app.GridLayout18.ColumnWidth = {'2x', '1x'};
            app.GridLayout18.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1.75x'};
            app.GridLayout18.RowSpacing = 5;
            app.GridLayout18.BackgroundColor = [1 1 1];

            % Create Button_UpdateData
            app.Button_UpdateData = uibutton(app.GridLayout18, 'push');
            app.Button_UpdateData.ButtonPushedFcn = createCallbackFcn(app, @Button_UpdateDataPushed, true);
            app.Button_UpdateData.WordWrap = 'on';
            app.Button_UpdateData.FontSize = 10;
            app.Button_UpdateData.Layout.Row = 5;
            app.Button_UpdateData.Layout.Column = 2;
            app.Button_UpdateData.Text = 'Update  Observ. Data';

            % Create Label_ObservationData
            app.Label_ObservationData = uilabel(app.GridLayout18);
            app.Label_ObservationData.VerticalAlignment = 'top';
            app.Label_ObservationData.WordWrap = 'on';
            app.Label_ObservationData.FontSize = 8;
            app.Label_ObservationData.Layout.Row = [1 3];
            app.Label_ObservationData.Layout.Column = [1 2];
            app.Label_ObservationData.Text = {'OBSERVATION DATA:'; 'Observation data are loaded in and grouped by file date. Observation data for each of the file dates below have been loaded into the tool. To update the data use the button to the right.'; ''; 'PORTFOLIO:'; 'To load a portfolio, click the Load Portfolio button (you must first load observation data).'; ''; 'TREASURIES:'; 'US treasury data can be loaded by clicking the Update Treasuries Button'};

            % Create UITable_LoadedDates
            app.UITable_LoadedDates = uitable(app.GridLayout18);
            app.UITable_LoadedDates.ColumnName = '';
            app.UITable_LoadedDates.RowName = {};
            app.UITable_LoadedDates.Layout.Row = [4 10];
            app.UITable_LoadedDates.Layout.Column = 1;
            app.UITable_LoadedDates.FontSize = 9;

            % Create CheckDataButton
            app.CheckDataButton = uibutton(app.GridLayout18, 'push');
            app.CheckDataButton.ButtonPushedFcn = createCallbackFcn(app, @CheckDataButtonPushed, true);
            app.CheckDataButton.WordWrap = 'on';
            app.CheckDataButton.FontSize = 10;
            app.CheckDataButton.Layout.Row = 6;
            app.CheckDataButton.Layout.Column = 2;
            app.CheckDataButton.Text = 'Check Data';

            % Create Button_LoadPortfolio
            app.Button_LoadPortfolio = uibutton(app.GridLayout18, 'push');
            app.Button_LoadPortfolio.ButtonPushedFcn = createCallbackFcn(app, @Button_LoadPortfolioPushed, true);
            app.Button_LoadPortfolio.WordWrap = 'on';
            app.Button_LoadPortfolio.FontSize = 10;
            app.Button_LoadPortfolio.Layout.Row = 7;
            app.Button_LoadPortfolio.Layout.Column = 2;
            app.Button_LoadPortfolio.Text = 'Load a Portfolio';

            % Create Button_UpdateUSTdata
            app.Button_UpdateUSTdata = uibutton(app.GridLayout18, 'push');
            app.Button_UpdateUSTdata.ButtonPushedFcn = createCallbackFcn(app, @Button_UpdateUSTdataPushed, true);
            app.Button_UpdateUSTdata.WordWrap = 'on';
            app.Button_UpdateUSTdata.FontSize = 9;
            app.Button_UpdateUSTdata.Layout.Row = 4;
            app.Button_UpdateUSTdata.Layout.Column = 2;
            app.Button_UpdateUSTdata.Text = 'Update Treasuries';

            % Create GridLayout36
            app.GridLayout36 = uigridlayout(app.GridLayout18);
            app.GridLayout36.ColumnWidth = {'1x', '1x', '2x', '1x'};
            app.GridLayout36.RowHeight = {'1x', '0.9x'};
            app.GridLayout36.ColumnSpacing = 2;
            app.GridLayout36.RowSpacing = 4;
            app.GridLayout36.Padding = [2 2 2 2];
            app.GridLayout36.Layout.Row = 10;
            app.GridLayout36.Layout.Column = 2;
            app.GridLayout36.BackgroundColor = [1 1 1];

            % Create FilterOutaBankDropDownLabel
            app.FilterOutaBankDropDownLabel = uilabel(app.GridLayout36);
            app.FilterOutaBankDropDownLabel.VerticalAlignment = 'top';
            app.FilterOutaBankDropDownLabel.WordWrap = 'on';
            app.FilterOutaBankDropDownLabel.FontSize = 9;
            app.FilterOutaBankDropDownLabel.Enable = 'off';
            app.FilterOutaBankDropDownLabel.Layout.Row = 1;
            app.FilterOutaBankDropDownLabel.Layout.Column = [1 2];
            app.FilterOutaBankDropDownLabel.Text = 'Filter Out a Bank';

            % Create FilterOutaBankDropDown
            app.FilterOutaBankDropDown = uidropdown(app.GridLayout36);
            app.FilterOutaBankDropDown.Items = {'none'};
            app.FilterOutaBankDropDown.Enable = 'off';
            app.FilterOutaBankDropDown.FontSize = 9;
            app.FilterOutaBankDropDown.Layout.Row = 1;
            app.FilterOutaBankDropDown.Layout.Column = [3 4];
            app.FilterOutaBankDropDown.Value = 'none';

            % Create Button
            app.Button = uibutton(app.GridLayout36, 'push');
            app.Button.Icon = fullfile(pathToMLAPP, 'AppImages', 'greenCheck.png');
            app.Button.IconAlignment = 'bottom';
            app.Button.BackgroundColor = [1 1 1];
            app.Button.Enable = 'off';
            app.Button.Layout.Row = 2;
            app.Button.Layout.Column = 4;
            app.Button.Text = '';

            % Create ButtonGroup_SwapFixedto
            app.ButtonGroup_SwapFixedto = uibuttongroup(app.GridLayout18);
            app.ButtonGroup_SwapFixedto.Title = 'Swap Fixed to:';
            app.ButtonGroup_SwapFixedto.Layout.Row = [8 9];
            app.ButtonGroup_SwapFixedto.Layout.Column = 2;
            app.ButtonGroup_SwapFixedto.FontSize = 9;

            % Create Button_Swap2SOFR
            app.Button_Swap2SOFR = uitogglebutton(app.ButtonGroup_SwapFixedto);
            app.Button_Swap2SOFR.Tag = 'SOFR';
            app.Button_Swap2SOFR.Text = 'SOFR';
            app.Button_Swap2SOFR.FontSize = 9;
            app.Button_Swap2SOFR.Position = [7 25 93 16];
            app.Button_Swap2SOFR.Value = true;

            % Create Button_Swap2LIBOR
            app.Button_Swap2LIBOR = uitogglebutton(app.ButtonGroup_SwapFixedto);
            app.Button_Swap2LIBOR.Tag = 'LIBOR';
            app.Button_Swap2LIBOR.Text = 'LIBOR';
            app.Button_Swap2LIBOR.FontSize = 9;
            app.Button_Swap2LIBOR.Position = [7 8 93 16];

            % Create TextArea_DataNotes
            app.TextArea_DataNotes = uitextarea(app.GridLayout17);
            app.TextArea_DataNotes.FontName = 'Consolas';
            app.TextArea_DataNotes.FontSize = 8;
            app.TextArea_DataNotes.Placeholder = 'Any notes associated with the data loading process will be displayed here.';
            app.TextArea_DataNotes.Layout.Row = 1;
            app.TextArea_DataNotes.Layout.Column = 5;

            % Create GRIDTab
            app.GRIDTab = uitab(app.TabGroup);
            app.GRIDTab.Title = 'GRID';
            app.GRIDTab.BackgroundColor = [1 1 1];

            % Create GridLayout5
            app.GridLayout5 = uigridlayout(app.GRIDTab);
            app.GridLayout5.ColumnWidth = {'3x'};
            app.GridLayout5.RowHeight = {'20x', '2x'};
            app.GridLayout5.RowSpacing = 4;
            app.GridLayout5.BackgroundColor = [1 1 1];

            % Create GridLayout16
            app.GridLayout16 = uigridlayout(app.GridLayout5);
            app.GridLayout16.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout16.RowHeight = {'1x'};
            app.GridLayout16.ColumnSpacing = 2;
            app.GridLayout16.RowSpacing = 2;
            app.GridLayout16.Padding = [2 2 2 2];
            app.GridLayout16.Layout.Row = 2;
            app.GridLayout16.Layout.Column = 1;
            app.GridLayout16.BackgroundColor = [1 1 1];

            % Create Button_SetDefaultGrid
            app.Button_SetDefaultGrid = uibutton(app.GridLayout16, 'push');
            app.Button_SetDefaultGrid.ButtonPushedFcn = createCallbackFcn(app, @Button_SetDefaultGridPushed, true);
            app.Button_SetDefaultGrid.Icon = fullfile(pathToMLAPP, 'AppImages', 'Default1.png');
            app.Button_SetDefaultGrid.BackgroundColor = [1 1 1];
            app.Button_SetDefaultGrid.Tooltip = {'Set the grid builder parameters to their "default" settings.'};
            app.Button_SetDefaultGrid.Layout.Row = 1;
            app.Button_SetDefaultGrid.Layout.Column = 1;
            app.Button_SetDefaultGrid.Text = '';

            % Create Button_SaveGrid
            app.Button_SaveGrid = uibutton(app.GridLayout16, 'push');
            app.Button_SaveGrid.ButtonPushedFcn = createCallbackFcn(app, @Button_SaveGridPushed, true);
            app.Button_SaveGrid.Icon = fullfile(pathToMLAPP, 'AppImages', 'Save.png');
            app.Button_SaveGrid.BackgroundColor = [1 1 1];
            app.Button_SaveGrid.Enable = 'off';
            app.Button_SaveGrid.Tooltip = {'Save the current grid.'};
            app.Button_SaveGrid.Layout.Row = 1;
            app.Button_SaveGrid.Layout.Column = 3;
            app.Button_SaveGrid.Text = '';

            % Create Button_BuildGrid
            app.Button_BuildGrid = uibutton(app.GridLayout16, 'push');
            app.Button_BuildGrid.ButtonPushedFcn = createCallbackFcn(app, @Button_BuildGridPushed, true);
            app.Button_BuildGrid.Icon = fullfile(pathToMLAPP, 'AppImages', 'Build1.png');
            app.Button_BuildGrid.BackgroundColor = [1 1 1];
            app.Button_BuildGrid.Tooltip = {'Build the grid as per the parameters input in the grid builder.'};
            app.Button_BuildGrid.Layout.Row = 1;
            app.Button_BuildGrid.Layout.Column = 2;
            app.Button_BuildGrid.Text = '';

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.GridLayout5);
            app.TabGroup2.Layout.Row = 1;
            app.TabGroup2.Layout.Column = 1;

            % Create GridBuilderTab
            app.GridBuilderTab = uitab(app.TabGroup2);
            app.GridBuilderTab.Title = 'Grid Builder';
            app.GridBuilderTab.BackgroundColor = [1 1 1];

            % Create GridLayout29
            app.GridLayout29 = uigridlayout(app.GridBuilderTab);
            app.GridLayout29.ColumnWidth = {'1x', '1x', '1x', '1x', '1x'};
            app.GridLayout29.RowHeight = {'0.5x', '1x', '1x', '1x', '1x', '0.5x'};
            app.GridLayout29.BackgroundColor = [1 1 1];

            % Create CUSTOMIZEAPRICINGGRIDLabel
            app.CUSTOMIZEAPRICINGGRIDLabel = uilabel(app.GridLayout29);
            app.CUSTOMIZEAPRICINGGRIDLabel.BackgroundColor = [0.7686 0.349 0.0706];
            app.CUSTOMIZEAPRICINGGRIDLabel.FontWeight = 'bold';
            app.CUSTOMIZEAPRICINGGRIDLabel.FontColor = [1 1 1];
            app.CUSTOMIZEAPRICINGGRIDLabel.Layout.Row = 1;
            app.CUSTOMIZEAPRICINGGRIDLabel.Layout.Column = [1 5];
            app.CUSTOMIZEAPRICINGGRIDLabel.Text = 'CUSTOMIZE A PRICING GRID';

            % Create TextArea_PricingGridInstructions
            app.TextArea_PricingGridInstructions = uitextarea(app.GridLayout29);
            app.TextArea_PricingGridInstructions.Editable = 'off';
            app.TextArea_PricingGridInstructions.FontSize = 10;
            app.TextArea_PricingGridInstructions.Layout.Row = [2 5];
            app.TextArea_PricingGridInstructions.Layout.Column = [1 5];
            app.TextArea_PricingGridInstructions.Value = {'Build the pricing grid using the following tabs:'; ''; 'FACILITY INFORMATION: '; 'Holds the Loan Size, Facility Risk, Term, Indexing and other loan information. The Facility information tab allows you to set various groups for each of those metrics.'; ''; 'COLLATERAL: '; 'Allows you to create groups of collateral types securing the individual loans.'; ''; 'INDUSTRY: '; 'Allows you to divide the loans into user defined industry groups (based on NAICS 2-digit codes).'; ''; 'GEOGRAPHY: '; 'Allows you to divide the loans based on various geographical features.'; ''; ''; 'NOTE: if you are looking to price an input portfolio to the market, you do not need to visit the following tabs, after loading your portfolio, just proceed to calculate prices.'};

            % Create Tab_FacilityInformation
            app.Tab_FacilityInformation = uitab(app.TabGroup2);
            app.Tab_FacilityInformation.Title = 'Facility Information';
            app.Tab_FacilityInformation.BackgroundColor = [1 1 1];

            % Create GridLayout19
            app.GridLayout19 = uigridlayout(app.Tab_FacilityInformation);
            app.GridLayout19.ColumnWidth = {'1x', '1x', '1x', '1x'};
            app.GridLayout19.RowHeight = {'9x'};
            app.GridLayout19.BackgroundColor = [1 1 1];

            % Create LoanSizeCommitmentPanel
            app.LoanSizeCommitmentPanel = uipanel(app.GridLayout19);
            app.LoanSizeCommitmentPanel.ForegroundColor = [1 1 1];
            app.LoanSizeCommitmentPanel.TitlePosition = 'centertop';
            app.LoanSizeCommitmentPanel.Title = 'Loan Size (Commitment)';
            app.LoanSizeCommitmentPanel.BackgroundColor = [0.7686 0.349 0.0706];
            app.LoanSizeCommitmentPanel.Layout.Row = 1;
            app.LoanSizeCommitmentPanel.Layout.Column = 1;
            app.LoanSizeCommitmentPanel.FontName = 'Britannic Bold';
            app.LoanSizeCommitmentPanel.FontWeight = 'bold';
            app.LoanSizeCommitmentPanel.FontSize = 10;

            % Create GridLayout7
            app.GridLayout7 = uigridlayout(app.LoanSizeCommitmentPanel);
            app.GridLayout7.ColumnWidth = {'4x', '7x', '1x'};
            app.GridLayout7.RowHeight = {'2x', '1x', '1x', '3x', '1x'};
            app.GridLayout7.ColumnSpacing = 2;
            app.GridLayout7.RowSpacing = 2;
            app.GridLayout7.Padding = [2 2 5 2];
            app.GridLayout7.BackgroundColor = [1 1 1];

            % Create LoanSizeGroupsLabel
            app.LoanSizeGroupsLabel = uilabel(app.GridLayout7);
            app.LoanSizeGroupsLabel.WordWrap = 'on';
            app.LoanSizeGroupsLabel.FontSize = 9;
            app.LoanSizeGroupsLabel.Layout.Row = 4;
            app.LoanSizeGroupsLabel.Layout.Column = [1 3];
            app.LoanSizeGroupsLabel.Text = {'Loan Size Groups (MM):'; 'Enter the group splits in the box below. For example, if you would like groups to be $0 to 1MM, $1MM to $50MM and $50MM to $100MM, type 1,50,100 in the box below.'};

            % Create EditField_LoanSizeGroups
            app.EditField_LoanSizeGroups = uieditfield(app.GridLayout7, 'text');
            app.EditField_LoanSizeGroups.FontSize = 10;
            app.EditField_LoanSizeGroups.BackgroundColor = [0.9412 0.9412 0.9412];
            app.EditField_LoanSizeGroups.Layout.Row = 5;
            app.EditField_LoanSizeGroups.Layout.Column = [1 3];

            % Create SelectoneormorefacilitytypestobeincludedinthepricinggridLabel_2
            app.SelectoneormorefacilitytypestobeincludedinthepricinggridLabel_2 = uilabel(app.GridLayout7);
            app.SelectoneormorefacilitytypestobeincludedinthepricinggridLabel_2.WordWrap = 'on';
            app.SelectoneormorefacilitytypestobeincludedinthepricinggridLabel_2.FontSize = 10;
            app.SelectoneormorefacilitytypestobeincludedinthepricinggridLabel_2.Layout.Row = 1;
            app.SelectoneormorefacilitytypestobeincludedinthepricinggridLabel_2.Layout.Column = [1 3];
            app.SelectoneormorefacilitytypestobeincludedinthepricinggridLabel_2.Text = 'Set the range of loan sizes (in MM) to included in the grid. Then set interim loan size group splits.';

            % Create MinLoanSizeMMLabel
            app.MinLoanSizeMMLabel = uilabel(app.GridLayout7);
            app.MinLoanSizeMMLabel.WordWrap = 'on';
            app.MinLoanSizeMMLabel.FontSize = 10;
            app.MinLoanSizeMMLabel.Layout.Row = 2;
            app.MinLoanSizeMMLabel.Layout.Column = [2 3];
            app.MinLoanSizeMMLabel.Text = 'Min Loan Size (MM)';

            % Create EditField_MinLoanSize
            app.EditField_MinLoanSize = uieditfield(app.GridLayout7, 'text');
            app.EditField_MinLoanSize.FontSize = 10;
            app.EditField_MinLoanSize.BackgroundColor = [0.902 0.902 0.902];
            app.EditField_MinLoanSize.Layout.Row = 2;
            app.EditField_MinLoanSize.Layout.Column = 1;

            % Create MaxLoanSizeMMEditFieldLabel
            app.MaxLoanSizeMMEditFieldLabel = uilabel(app.GridLayout7);
            app.MaxLoanSizeMMEditFieldLabel.WordWrap = 'on';
            app.MaxLoanSizeMMEditFieldLabel.FontSize = 10;
            app.MaxLoanSizeMMEditFieldLabel.Layout.Row = 3;
            app.MaxLoanSizeMMEditFieldLabel.Layout.Column = [2 3];
            app.MaxLoanSizeMMEditFieldLabel.Text = 'Max Loan Size (MM)';

            % Create EditField_MaxLoanSize
            app.EditField_MaxLoanSize = uieditfield(app.GridLayout7, 'text');
            app.EditField_MaxLoanSize.FontSize = 10;
            app.EditField_MaxLoanSize.BackgroundColor = [0.902 0.902 0.902];
            app.EditField_MaxLoanSize.Layout.Row = 3;
            app.EditField_MaxLoanSize.Layout.Column = 1;

            % Create RiskCategoriesPanel
            app.RiskCategoriesPanel = uipanel(app.GridLayout19);
            app.RiskCategoriesPanel.ForegroundColor = [1 1 1];
            app.RiskCategoriesPanel.TitlePosition = 'centertop';
            app.RiskCategoriesPanel.Title = 'Risk Categories';
            app.RiskCategoriesPanel.BackgroundColor = [0.7686 0.349 0.0706];
            app.RiskCategoriesPanel.Layout.Row = 1;
            app.RiskCategoriesPanel.Layout.Column = 2;
            app.RiskCategoriesPanel.FontName = 'Britannic Bold';
            app.RiskCategoriesPanel.FontWeight = 'bold';
            app.RiskCategoriesPanel.FontSize = 10;

            % Create GridLayout9
            app.GridLayout9 = uigridlayout(app.RiskCategoriesPanel);
            app.GridLayout9.ColumnWidth = {'4x', '7x', '1x'};
            app.GridLayout9.RowHeight = {'2x', '1x', '1x', '3x', '1x'};
            app.GridLayout9.ColumnSpacing = 2;
            app.GridLayout9.RowSpacing = 2;
            app.GridLayout9.Padding = [2 2 5 2];
            app.GridLayout9.BackgroundColor = [1 1 1];

            % Create Label_3
            app.Label_3 = uilabel(app.GridLayout9);
            app.Label_3.WordWrap = 'on';
            app.Label_3.FontSize = 10;
            app.Label_3.Layout.Row = 1;
            app.Label_3.Layout.Column = [1 3];
            app.Label_3.Text = 'Set the range of risk categories to include in the grid. Then set interim risk group splits.';

            % Create RiskCategoryGroupsEditFieldLabel
            app.RiskCategoryGroupsEditFieldLabel = uilabel(app.GridLayout9);
            app.RiskCategoryGroupsEditFieldLabel.Layout.Row = 4;
            app.RiskCategoryGroupsEditFieldLabel.Layout.Column = [1 3];
            app.RiskCategoryGroupsEditFieldLabel.Text = 'Risk Category Groups';

            % Create EditField_RiskCategoryGroups
            app.EditField_RiskCategoryGroups = uieditfield(app.GridLayout9, 'text');
            app.EditField_RiskCategoryGroups.FontSize = 10;
            app.EditField_RiskCategoryGroups.BackgroundColor = [0.9412 0.9412 0.9412];
            app.EditField_RiskCategoryGroups.Layout.Row = 5;
            app.EditField_RiskCategoryGroups.Layout.Column = [1 3];

            % Create MinLoanSizeMMLabel_2
            app.MinLoanSizeMMLabel_2 = uilabel(app.GridLayout9);
            app.MinLoanSizeMMLabel_2.HorizontalAlignment = 'right';
            app.MinLoanSizeMMLabel_2.WordWrap = 'on';
            app.MinLoanSizeMMLabel_2.FontSize = 10;
            app.MinLoanSizeMMLabel_2.Layout.Row = 2;
            app.MinLoanSizeMMLabel_2.Layout.Column = 2;
            app.MinLoanSizeMMLabel_2.Text = 'Min Risk Number';

            % Create EditField_MinRiskNum
            app.EditField_MinRiskNum = uieditfield(app.GridLayout9, 'text');
            app.EditField_MinRiskNum.FontSize = 10;
            app.EditField_MinRiskNum.BackgroundColor = [0.902 0.902 0.902];
            app.EditField_MinRiskNum.Layout.Row = 2;
            app.EditField_MinRiskNum.Layout.Column = 1;

            % Create MinLoanSizeMMLabel_3
            app.MinLoanSizeMMLabel_3 = uilabel(app.GridLayout9);
            app.MinLoanSizeMMLabel_3.HorizontalAlignment = 'right';
            app.MinLoanSizeMMLabel_3.WordWrap = 'on';
            app.MinLoanSizeMMLabel_3.FontSize = 10;
            app.MinLoanSizeMMLabel_3.Layout.Row = 3;
            app.MinLoanSizeMMLabel_3.Layout.Column = 2;
            app.MinLoanSizeMMLabel_3.Text = 'Max Risk Number';

            % Create EditField_MaxRiskNum
            app.EditField_MaxRiskNum = uieditfield(app.GridLayout9, 'text');
            app.EditField_MaxRiskNum.FontSize = 10;
            app.EditField_MaxRiskNum.BackgroundColor = [0.902 0.902 0.902];
            app.EditField_MaxRiskNum.Layout.Row = 3;
            app.EditField_MaxRiskNum.Layout.Column = 1;

            % Create TermPanel
            app.TermPanel = uipanel(app.GridLayout19);
            app.TermPanel.ForegroundColor = [1 1 1];
            app.TermPanel.TitlePosition = 'centertop';
            app.TermPanel.Title = 'Term';
            app.TermPanel.BackgroundColor = [0.7686 0.349 0.0706];
            app.TermPanel.Layout.Row = 1;
            app.TermPanel.Layout.Column = 3;
            app.TermPanel.FontName = 'Britannic Bold';
            app.TermPanel.FontWeight = 'bold';
            app.TermPanel.FontSize = 10;

            % Create GridLayout10
            app.GridLayout10 = uigridlayout(app.TermPanel);
            app.GridLayout10.ColumnWidth = {'4x', '7x', '1x'};
            app.GridLayout10.RowHeight = {'2x', '1x', '1x', '3x', '1x'};
            app.GridLayout10.ColumnSpacing = 2;
            app.GridLayout10.RowSpacing = 2;
            app.GridLayout10.Padding = [2 2 2 2];
            app.GridLayout10.BackgroundColor = [1 1 1];

            % Create Label_4
            app.Label_4 = uilabel(app.GridLayout10);
            app.Label_4.WordWrap = 'on';
            app.Label_4.FontSize = 10;
            app.Label_4.Layout.Row = 1;
            app.Label_4.Layout.Column = [1 3];
            app.Label_4.Text = 'Select the range of loan terms to include in the grid. Then set interim term group splits';

            % Create TermMonthGroupsLabel
            app.TermMonthGroupsLabel = uilabel(app.GridLayout10);
            app.TermMonthGroupsLabel.Layout.Row = 4;
            app.TermMonthGroupsLabel.Layout.Column = [1 3];
            app.TermMonthGroupsLabel.Text = 'Term (Month) Groups';

            % Create EditField_TermGroups
            app.EditField_TermGroups = uieditfield(app.GridLayout10, 'text');
            app.EditField_TermGroups.FontSize = 10;
            app.EditField_TermGroups.BackgroundColor = [0.9412 0.9412 0.9412];
            app.EditField_TermGroups.Layout.Row = 5;
            app.EditField_TermGroups.Layout.Column = [1 3];

            % Create MinLoanSizeMMLabel_4
            app.MinLoanSizeMMLabel_4 = uilabel(app.GridLayout10);
            app.MinLoanSizeMMLabel_4.HorizontalAlignment = 'right';
            app.MinLoanSizeMMLabel_4.WordWrap = 'on';
            app.MinLoanSizeMMLabel_4.FontSize = 10;
            app.MinLoanSizeMMLabel_4.Layout.Row = 2;
            app.MinLoanSizeMMLabel_4.Layout.Column = 2;
            app.MinLoanSizeMMLabel_4.Text = 'Min. Term Included (mths.)';

            % Create EditField_MinTerm
            app.EditField_MinTerm = uieditfield(app.GridLayout10, 'text');
            app.EditField_MinTerm.FontSize = 10;
            app.EditField_MinTerm.BackgroundColor = [0.902 0.902 0.902];
            app.EditField_MinTerm.Layout.Row = 2;
            app.EditField_MinTerm.Layout.Column = 1;

            % Create MinLoanSizeMMLabel_5
            app.MinLoanSizeMMLabel_5 = uilabel(app.GridLayout10);
            app.MinLoanSizeMMLabel_5.HorizontalAlignment = 'right';
            app.MinLoanSizeMMLabel_5.WordWrap = 'on';
            app.MinLoanSizeMMLabel_5.FontSize = 10;
            app.MinLoanSizeMMLabel_5.Layout.Row = 3;
            app.MinLoanSizeMMLabel_5.Layout.Column = 2;
            app.MinLoanSizeMMLabel_5.Text = 'Max. Term Included (mths.)';

            % Create EditField_MaxTerm
            app.EditField_MaxTerm = uieditfield(app.GridLayout10, 'text');
            app.EditField_MaxTerm.FontSize = 10;
            app.EditField_MaxTerm.BackgroundColor = [0.902 0.902 0.902];
            app.EditField_MaxTerm.Layout.Row = 3;
            app.EditField_MaxTerm.Layout.Column = 1;

            % Create OtherInformationPanel
            app.OtherInformationPanel = uipanel(app.GridLayout19);
            app.OtherInformationPanel.ForegroundColor = [1 1 1];
            app.OtherInformationPanel.TitlePosition = 'centertop';
            app.OtherInformationPanel.Title = 'Other Information';
            app.OtherInformationPanel.BackgroundColor = [0.7686 0.349 0.0706];
            app.OtherInformationPanel.Layout.Row = 1;
            app.OtherInformationPanel.Layout.Column = 4;
            app.OtherInformationPanel.FontName = 'Britannic Bold';
            app.OtherInformationPanel.FontWeight = 'bold';
            app.OtherInformationPanel.FontSize = 10;

            % Create GridLayout24
            app.GridLayout24 = uigridlayout(app.OtherInformationPanel);
            app.GridLayout24.ColumnWidth = {'1x'};
            app.GridLayout24.RowHeight = {'1x', '1x', '3x'};
            app.GridLayout24.BackgroundColor = [1 1 1];

            % Create Tree_NewRenew
            app.Tree_NewRenew = uitree(app.GridLayout24, 'checkbox');
            app.Tree_NewRenew.FontSize = 9;
            app.Tree_NewRenew.Tooltip = {'This determines whether you want to use new originations, renewals, or both as observations when calculating your interpolated price points. It does not affect what cells are included in the grid.'};
            app.Tree_NewRenew.Layout.Row = 1;
            app.Tree_NewRenew.Layout.Column = 1;

            % Create Node_NewOriginations
            app.Node_NewOriginations = uitreenode(app.Tree_NewRenew);
            app.Node_NewOriginations.NodeData = 1;
            app.Node_NewOriginations.Text = 'New Originations';

            % Create Node_Renewals
            app.Node_Renewals = uitreenode(app.Tree_NewRenew);
            app.Node_Renewals.NodeData = 2;
            app.Node_Renewals.Text = 'Renewals';

            % Create Tree_FacilityType
            app.Tree_FacilityType = uitree(app.GridLayout24, 'checkbox');
            app.Tree_FacilityType.FontSize = 9;
            app.Tree_FacilityType.Layout.Row = 2;
            app.Tree_FacilityType.Layout.Column = 1;

            % Create RevolvingNode
            app.RevolvingNode = uitreenode(app.Tree_FacilityType);
            app.RevolvingNode.Text = 'Revolving';

            % Create NonRevolvingNode
            app.NonRevolvingNode = uitreenode(app.Tree_FacilityType);
            app.NonRevolvingNode.Text = 'Non-Revolving';

            % Create ButtonGroup_Index
            app.ButtonGroup_Index = uibuttongroup(app.GridLayout24);
            app.ButtonGroup_Index.TitlePosition = 'centertop';
            app.ButtonGroup_Index.Title = 'Index/Interest Type';
            app.ButtonGroup_Index.BackgroundColor = [1 1 1];
            app.ButtonGroup_Index.Layout.Row = 3;
            app.ButtonGroup_Index.Layout.Column = 1;
            app.ButtonGroup_Index.FontWeight = 'bold';
            app.ButtonGroup_Index.FontSize = 9;

            % Create Button_FixedRate
            app.Button_FixedRate = uiradiobutton(app.ButtonGroup_Index);
            app.Button_FixedRate.Tag = 'fixed';
            app.Button_FixedRate.Text = 'Fixed Rate';
            app.Button_FixedRate.FontSize = 10;
            app.Button_FixedRate.Position = [11 101 70 22];
            app.Button_FixedRate.Value = true;

            % Create Button_Prime
            app.Button_Prime = uiradiobutton(app.ButtonGroup_Index);
            app.Button_Prime.Tag = 'prime';
            app.Button_Prime.Text = 'Prime';
            app.Button_Prime.FontSize = 10;
            app.Button_Prime.Position = [11 78 65 22];

            % Create Button_SOFR
            app.Button_SOFR = uiradiobutton(app.ButtonGroup_Index);
            app.Button_SOFR.Tag = 'sofr';
            app.Button_SOFR.Text = 'SOFR';
            app.Button_SOFR.FontSize = 10;
            app.Button_SOFR.Position = [11 55 65 22];

            % Create Button_LIBOR
            app.Button_LIBOR = uiradiobutton(app.ButtonGroup_Index);
            app.Button_LIBOR.Tag = 'libor';
            app.Button_LIBOR.Text = 'LIBOR';
            app.Button_LIBOR.FontSize = 10;
            app.Button_LIBOR.Position = [11 32 52 22];

            % Create CollateralTab
            app.CollateralTab = uitab(app.TabGroup2);
            app.CollateralTab.Title = 'Collateral';
            app.CollateralTab.BackgroundColor = [1 1 1];

            % Create GridLayout20
            app.GridLayout20 = uigridlayout(app.CollateralTab);
            app.GridLayout20.ColumnWidth = {'1x'};
            app.GridLayout20.RowHeight = {'1x'};
            app.GridLayout20.BackgroundColor = [1 1 1];

            % Create CollateralTypeSecurityInterestPanel
            app.CollateralTypeSecurityInterestPanel = uipanel(app.GridLayout20);
            app.CollateralTypeSecurityInterestPanel.ForegroundColor = [1 1 1];
            app.CollateralTypeSecurityInterestPanel.TitlePosition = 'centertop';
            app.CollateralTypeSecurityInterestPanel.Title = 'Collateral Type/Security Interest';
            app.CollateralTypeSecurityInterestPanel.BackgroundColor = [0.7686 0.349 0.0706];
            app.CollateralTypeSecurityInterestPanel.Layout.Row = 1;
            app.CollateralTypeSecurityInterestPanel.Layout.Column = 1;
            app.CollateralTypeSecurityInterestPanel.FontName = 'Britannic Bold';
            app.CollateralTypeSecurityInterestPanel.FontWeight = 'bold';

            % Create GridLayout11
            app.GridLayout11 = uigridlayout(app.CollateralTypeSecurityInterestPanel);
            app.GridLayout11.ColumnWidth = {'5x', '1x', '5x'};
            app.GridLayout11.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout11.ColumnSpacing = 2;
            app.GridLayout11.RowSpacing = 2;
            app.GridLayout11.Padding = [2 2 2 2];
            app.GridLayout11.BackgroundColor = [1 1 1];

            % Create Label_5
            app.Label_5 = uilabel(app.GridLayout11);
            app.Label_5.WordWrap = 'on';
            app.Label_5.FontSize = 10;
            app.Label_5.Layout.Row = 1;
            app.Label_5.Layout.Column = [1 3];
            app.Label_5.Text = 'Use the buttons to add or delete collateral groups, add collateral types to or remove from a group, or change priority of a group.';

            % Create ListBox_CollateralTypes
            app.ListBox_CollateralTypes = uilistbox(app.GridLayout11);
            app.ListBox_CollateralTypes.Items = {};
            app.ListBox_CollateralTypes.Multiselect = 'on';
            app.ListBox_CollateralTypes.FontSize = 10;
            app.ListBox_CollateralTypes.Layout.Row = [3 9];
            app.ListBox_CollateralTypes.Layout.Column = 1;
            app.ListBox_CollateralTypes.Value = {};

            % Create Button_CreateCollateralGroup
            app.Button_CreateCollateralGroup = uibutton(app.GridLayout11, 'push');
            app.Button_CreateCollateralGroup.ButtonPushedFcn = createCallbackFcn(app, @Button_CreateCollateralGroupPushed, true);
            app.Button_CreateCollateralGroup.Icon = fullfile(pathToMLAPP, 'AppImages', 'AddGroup.png');
            app.Button_CreateCollateralGroup.IconAlignment = 'center';
            app.Button_CreateCollateralGroup.BackgroundColor = [1 1 1];
            app.Button_CreateCollateralGroup.Tooltip = {'Add a new collateral group (from the selected collateral types)'};
            app.Button_CreateCollateralGroup.Layout.Row = 3;
            app.Button_CreateCollateralGroup.Layout.Column = 2;
            app.Button_CreateCollateralGroup.Text = '';

            % Create Button_AddToCollateralGroup
            app.Button_AddToCollateralGroup = uibutton(app.GridLayout11, 'push');
            app.Button_AddToCollateralGroup.ButtonPushedFcn = createCallbackFcn(app, @Button_AddToCollateralGroupPushed, true);
            app.Button_AddToCollateralGroup.Icon = fullfile(pathToMLAPP, 'AppImages', 'AddElement.png');
            app.Button_AddToCollateralGroup.BackgroundColor = [1 1 1];
            app.Button_AddToCollateralGroup.Tooltip = {'Add the selected collateral type into the selected collateral group.'};
            app.Button_AddToCollateralGroup.Layout.Row = 4;
            app.Button_AddToCollateralGroup.Layout.Column = 2;
            app.Button_AddToCollateralGroup.Text = '';

            % Create Button_RemoveCollateral
            app.Button_RemoveCollateral = uibutton(app.GridLayout11, 'push');
            app.Button_RemoveCollateral.ButtonPushedFcn = createCallbackFcn(app, @Button_RemoveCollateralPushed, true);
            app.Button_RemoveCollateral.Icon = fullfile(pathToMLAPP, 'AppImages', 'Remove.png');
            app.Button_RemoveCollateral.BackgroundColor = [1 1 1];
            app.Button_RemoveCollateral.Tooltip = {'Remove the selected collateral group from the hierarchy.'};
            app.Button_RemoveCollateral.Layout.Row = 6;
            app.Button_RemoveCollateral.Layout.Column = 2;
            app.Button_RemoveCollateral.Text = '';

            % Create Tree_CollateralTypes
            app.Tree_CollateralTypes = uitree(app.GridLayout11);
            app.Tree_CollateralTypes.FontSize = 10;
            app.Tree_CollateralTypes.Tooltip = {''};
            app.Tree_CollateralTypes.Layout.Row = [3 9];
            app.Tree_CollateralTypes.Layout.Column = 3;

            % Create Label_6
            app.Label_6 = uilabel(app.GridLayout11);
            app.Label_6.HorizontalAlignment = 'center';
            app.Label_6.VerticalAlignment = 'bottom';
            app.Label_6.WordWrap = 'on';
            app.Label_6.Tooltip = {'Individual collateral types can be included in the collateral hierarchy to the right.'};
            app.Label_6.Layout.Row = 2;
            app.Label_6.Layout.Column = 1;
            app.Label_6.Text = 'Available Collateral Types';

            % Create Label_7
            app.Label_7 = uilabel(app.GridLayout11);
            app.Label_7.HorizontalAlignment = 'center';
            app.Label_7.VerticalAlignment = 'bottom';
            app.Label_7.WordWrap = 'on';
            app.Label_7.Tooltip = {'Collateral Groups holds the grouping of collateral types.'};
            app.Label_7.Layout.Row = 2;
            app.Label_7.Layout.Column = 3;
            app.Label_7.Text = 'Collateral Groups';

            % Create Button_DelFromCollateralGroup
            app.Button_DelFromCollateralGroup = uibutton(app.GridLayout11, 'push');
            app.Button_DelFromCollateralGroup.ButtonPushedFcn = createCallbackFcn(app, @Button_DelFromCollateralGroupPushed, true);
            app.Button_DelFromCollateralGroup.Icon = fullfile(pathToMLAPP, 'AppImages', 'DelElement.png');
            app.Button_DelFromCollateralGroup.BackgroundColor = [1 1 1];
            app.Button_DelFromCollateralGroup.Layout.Row = 5;
            app.Button_DelFromCollateralGroup.Layout.Column = 2;
            app.Button_DelFromCollateralGroup.Text = '';

            % Create IndustryTab
            app.IndustryTab = uitab(app.TabGroup2);
            app.IndustryTab.Title = 'Industry';
            app.IndustryTab.BackgroundColor = [1 1 1];

            % Create GridLayout21
            app.GridLayout21 = uigridlayout(app.IndustryTab);
            app.GridLayout21.ColumnWidth = {'1x'};
            app.GridLayout21.RowHeight = {'1x'};
            app.GridLayout21.BackgroundColor = [1 1 1];

            % Create IndustryPanel
            app.IndustryPanel = uipanel(app.GridLayout21);
            app.IndustryPanel.ForegroundColor = [1 1 1];
            app.IndustryPanel.TitlePosition = 'centertop';
            app.IndustryPanel.Title = 'Industry';
            app.IndustryPanel.BackgroundColor = [0.7686 0.349 0.0706];
            app.IndustryPanel.Layout.Row = 1;
            app.IndustryPanel.Layout.Column = 1;
            app.IndustryPanel.FontName = 'Britannic Bold';
            app.IndustryPanel.FontWeight = 'bold';

            % Create GridLayout13
            app.GridLayout13 = uigridlayout(app.IndustryPanel);
            app.GridLayout13.ColumnWidth = {'5x', '1x', '5x'};
            app.GridLayout13.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout13.ColumnSpacing = 2;
            app.GridLayout13.RowSpacing = 2;
            app.GridLayout13.Padding = [2 2 2 2];
            app.GridLayout13.BackgroundColor = [1 1 1];

            % Create Label_8
            app.Label_8 = uilabel(app.GridLayout13);
            app.Label_8.WordWrap = 'on';
            app.Label_8.FontSize = 10;
            app.Label_8.Layout.Row = 1;
            app.Label_8.Layout.Column = [1 3];
            app.Label_8.Text = 'Use the buttons to add or delete industry groups, or change the composition of industry groups.';

            % Create Tree_Industries
            app.Tree_Industries = uitree(app.GridLayout13);
            app.Tree_Industries.FontSize = 10;
            app.Tree_Industries.Layout.Row = [3 9];
            app.Tree_Industries.Layout.Column = 3;

            % Create Label_UnincludedIndustries
            app.Label_UnincludedIndustries = uilabel(app.GridLayout13);
            app.Label_UnincludedIndustries.HorizontalAlignment = 'center';
            app.Label_UnincludedIndustries.VerticalAlignment = 'bottom';
            app.Label_UnincludedIndustries.WordWrap = 'on';
            app.Label_UnincludedIndustries.Layout.Row = 2;
            app.Label_UnincludedIndustries.Layout.Column = 1;
            app.Label_UnincludedIndustries.Text = 'Unincluded Industries (NAICS)';

            % Create Label_IndustryGroupsIncluded
            app.Label_IndustryGroupsIncluded = uilabel(app.GridLayout13);
            app.Label_IndustryGroupsIncluded.HorizontalAlignment = 'center';
            app.Label_IndustryGroupsIncluded.VerticalAlignment = 'bottom';
            app.Label_IndustryGroupsIncluded.WordWrap = 'on';
            app.Label_IndustryGroupsIncluded.Layout.Row = 2;
            app.Label_IndustryGroupsIncluded.Layout.Column = 3;
            app.Label_IndustryGroupsIncluded.Text = 'Industry Groups Included in the Pricing Grid';

            % Create Button_CreateIndustryGroup
            app.Button_CreateIndustryGroup = uibutton(app.GridLayout13, 'push');
            app.Button_CreateIndustryGroup.ButtonPushedFcn = createCallbackFcn(app, @Button_CreateIndustryGroupPushed, true);
            app.Button_CreateIndustryGroup.Icon = fullfile(pathToMLAPP, 'AppImages', 'AddGroup.png');
            app.Button_CreateIndustryGroup.BackgroundColor = [1 1 1];
            app.Button_CreateIndustryGroup.Layout.Row = 3;
            app.Button_CreateIndustryGroup.Layout.Column = 2;
            app.Button_CreateIndustryGroup.Text = '';

            % Create Button_AddToIndustryGroup
            app.Button_AddToIndustryGroup = uibutton(app.GridLayout13, 'push');
            app.Button_AddToIndustryGroup.ButtonPushedFcn = createCallbackFcn(app, @Button_AddToIndustryGroupPushed, true);
            app.Button_AddToIndustryGroup.Icon = fullfile(pathToMLAPP, 'AppImages', 'AddElement.png');
            app.Button_AddToIndustryGroup.BackgroundColor = [1 1 1];
            app.Button_AddToIndustryGroup.Layout.Row = 4;
            app.Button_AddToIndustryGroup.Layout.Column = 2;
            app.Button_AddToIndustryGroup.Text = '';

            % Create Button_DelFromIndustryGroup
            app.Button_DelFromIndustryGroup = uibutton(app.GridLayout13, 'push');
            app.Button_DelFromIndustryGroup.ButtonPushedFcn = createCallbackFcn(app, @Button_DelFromIndustryGroupPushed, true);
            app.Button_DelFromIndustryGroup.Icon = fullfile(pathToMLAPP, 'AppImages', 'DelElement.png');
            app.Button_DelFromIndustryGroup.BackgroundColor = [1 1 1];
            app.Button_DelFromIndustryGroup.Layout.Row = 5;
            app.Button_DelFromIndustryGroup.Layout.Column = 2;
            app.Button_DelFromIndustryGroup.Text = '';

            % Create Button_RemoveIndustryGroup
            app.Button_RemoveIndustryGroup = uibutton(app.GridLayout13, 'push');
            app.Button_RemoveIndustryGroup.ButtonPushedFcn = createCallbackFcn(app, @Button_RemoveIndustryGroupPushed, true);
            app.Button_RemoveIndustryGroup.Icon = fullfile(pathToMLAPP, 'AppImages', 'Remove.png');
            app.Button_RemoveIndustryGroup.BackgroundColor = [1 1 1];
            app.Button_RemoveIndustryGroup.Layout.Row = 6;
            app.Button_RemoveIndustryGroup.Layout.Column = 2;
            app.Button_RemoveIndustryGroup.Text = '';

            % Create ListBox_UnincludedIndustries
            app.ListBox_UnincludedIndustries = uilistbox(app.GridLayout13);
            app.ListBox_UnincludedIndustries.Items = {};
            app.ListBox_UnincludedIndustries.Multiselect = 'on';
            app.ListBox_UnincludedIndustries.FontSize = 10;
            app.ListBox_UnincludedIndustries.Layout.Row = [3 9];
            app.ListBox_UnincludedIndustries.Layout.Column = 1;
            app.ListBox_UnincludedIndustries.Value = {};

            % Create GeographyTab
            app.GeographyTab = uitab(app.TabGroup2);
            app.GeographyTab.Title = 'Geography';
            app.GeographyTab.BackgroundColor = [1 1 1];

            % Create GridLayout22
            app.GridLayout22 = uigridlayout(app.GeographyTab);
            app.GridLayout22.ColumnWidth = {'1x'};
            app.GridLayout22.RowHeight = {'1x'};
            app.GridLayout22.BackgroundColor = [1 1 1];

            % Create GeographyPanel
            app.GeographyPanel = uipanel(app.GridLayout22);
            app.GeographyPanel.ForegroundColor = [1 1 1];
            app.GeographyPanel.TitlePosition = 'centertop';
            app.GeographyPanel.Title = 'Geography';
            app.GeographyPanel.BackgroundColor = [0.7686 0.349 0.0706];
            app.GeographyPanel.Layout.Row = 1;
            app.GeographyPanel.Layout.Column = 1;
            app.GeographyPanel.FontName = 'Britannic Bold';
            app.GeographyPanel.FontWeight = 'bold';

            % Create GridLayout14
            app.GridLayout14 = uigridlayout(app.GeographyPanel);
            app.GridLayout14.ColumnWidth = {'4x', '1x'};
            app.GridLayout14.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout14.ColumnSpacing = 2;
            app.GridLayout14.RowSpacing = 2;
            app.GridLayout14.Padding = [2 2 2 2];
            app.GridLayout14.BackgroundColor = [1 1 1];

            % Create Tree_Geography
            app.Tree_Geography = uitree(app.GridLayout14, 'checkbox');
            app.Tree_Geography.FontSize = 8;
            app.Tree_Geography.Layout.Row = [2 8];
            app.Tree_Geography.Layout.Column = 1;

            % Create SelectgeographiestobeincludedinthepricinggridLabel
            app.SelectgeographiestobeincludedinthepricinggridLabel = uilabel(app.GridLayout14);
            app.SelectgeographiestobeincludedinthepricinggridLabel.WordWrap = 'on';
            app.SelectgeographiestobeincludedinthepricinggridLabel.FontSize = 10;
            app.SelectgeographiestobeincludedinthepricinggridLabel.Layout.Row = 1;
            app.SelectgeographiestobeincludedinthepricinggridLabel.Layout.Column = [1 2];
            app.SelectgeographiestobeincludedinthepricinggridLabel.Text = 'Select geographies to be included in the pricing grid. Use buttons on the right to include/exclude levels.';

            % Create Button_GeoState
            app.Button_GeoState = uibutton(app.GridLayout14, 'state');
            app.Button_GeoState.Tooltip = {'Include a split by US State.'};
            app.Button_GeoState.Text = 'STATE';
            app.Button_GeoState.WordWrap = 'on';
            app.Button_GeoState.FontSize = 9;
            app.Button_GeoState.Layout.Row = 4;
            app.Button_GeoState.Layout.Column = 2;

            % Create Button_GeoBuild
            app.Button_GeoBuild = uibutton(app.GridLayout14, 'push');
            app.Button_GeoBuild.ButtonPushedFcn = createCallbackFcn(app, @Button_GeoBuildPushed, true);
            app.Button_GeoBuild.Icon = fullfile(pathToMLAPP, 'AppImages', 'GeoOK.png');
            app.Button_GeoBuild.BackgroundColor = [1 1 1];
            app.Button_GeoBuild.Tooltip = {'Generate geographical hierarchy from which to select geographies.'};
            app.Button_GeoBuild.Layout.Row = 8;
            app.Button_GeoBuild.Layout.Column = 2;
            app.Button_GeoBuild.Text = '';

            % Create Button_GeoUndo
            app.Button_GeoUndo = uibutton(app.GridLayout14, 'push');
            app.Button_GeoUndo.ButtonPushedFcn = createCallbackFcn(app, @Button_GeoUndoPushed, true);
            app.Button_GeoUndo.Icon = fullfile(pathToMLAPP, 'AppImages', 'Undo.png');
            app.Button_GeoUndo.BackgroundColor = [1 1 1];
            app.Button_GeoUndo.Tooltip = {'Undo geography structure, start over.'};
            app.Button_GeoUndo.Layout.Row = 7;
            app.Button_GeoUndo.Layout.Column = 2;
            app.Button_GeoUndo.Text = '';

            % Create Button_FEDBranch
            app.Button_FEDBranch = uibutton(app.GridLayout14, 'state');
            app.Button_FEDBranch.Text = 'FED BRANCH';
            app.Button_FEDBranch.FontSize = 9;
            app.Button_FEDBranch.Layout.Row = 3;
            app.Button_FEDBranch.Layout.Column = 2;

            % Create Button_Region
            app.Button_Region = uibutton(app.GridLayout14, 'state');
            app.Button_Region.Text = 'REGION';
            app.Button_Region.FontSize = 9;
            app.Button_Region.Layout.Row = 2;
            app.Button_Region.Layout.Column = 2;

            % Create Button_GeoMSA
            app.Button_GeoMSA = uibutton(app.GridLayout14, 'state');
            app.Button_GeoMSA.Tooltip = {'Include split by MSA.'};
            app.Button_GeoMSA.Text = 'MSA';
            app.Button_GeoMSA.WordWrap = 'on';
            app.Button_GeoMSA.FontSize = 9;
            app.Button_GeoMSA.Layout.Row = 6;
            app.Button_GeoMSA.Layout.Column = 2;

            % Create Button_GeoUrbRur
            app.Button_GeoUrbRur = uibutton(app.GridLayout14, 'state');
            app.Button_GeoUrbRur.Tooltip = {'Incclude an urban/rural split.'};
            app.Button_GeoUrbRur.Text = 'URBAN/RURAL';
            app.Button_GeoUrbRur.WordWrap = 'on';
            app.Button_GeoUrbRur.FontSize = 9;
            app.Button_GeoUrbRur.Layout.Row = 5;
            app.Button_GeoUrbRur.Layout.Column = 2;

            % Create CALCULATEDISTANCESTab
            app.CALCULATEDISTANCESTab = uitab(app.TabGroup);
            app.CALCULATEDISTANCESTab.Title = 'CALCULATE DISTANCES';
            app.CALCULATEDISTANCESTab.BackgroundColor = [1 1 1];
            app.CALCULATEDISTANCESTab.ButtonDownFcn = createCallbackFcn(app, @CALCULATEDISTANCESTabButtonDown, true);

            % Create GridLayout25
            app.GridLayout25 = uigridlayout(app.CALCULATEDISTANCESTab);
            app.GridLayout25.ColumnWidth = {'4x', '1x', '1x', '3x', '3x'};
            app.GridLayout25.RowHeight = {'1x', '0.75x', '0.75x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1.5x'};
            app.GridLayout25.RowSpacing = 4;
            app.GridLayout25.BackgroundColor = [1 1 1];

            % Create TextArea_InterpNotes
            app.TextArea_InterpNotes = uitextarea(app.GridLayout25);
            app.TextArea_InterpNotes.FontName = 'Consolas';
            app.TextArea_InterpNotes.FontSize = 10;
            app.TextArea_InterpNotes.Placeholder = 'Any notes associated with the interpolation process will be displayed here.';
            app.TextArea_InterpNotes.Layout.Row = [1 11];
            app.TextArea_InterpNotes.Layout.Column = [2 5];

            % Create DISTANCECALCULATIONPanel
            app.DISTANCECALCULATIONPanel = uipanel(app.GridLayout25);
            app.DISTANCECALCULATIONPanel.ForegroundColor = [1 1 1];
            app.DISTANCECALCULATIONPanel.Title = 'DISTANCE CALCULATION';
            app.DISTANCECALCULATIONPanel.BackgroundColor = [0 0.451 0.7412];
            app.DISTANCECALCULATIONPanel.Layout.Row = [1 11];
            app.DISTANCECALCULATIONPanel.Layout.Column = 1;
            app.DISTANCECALCULATIONPanel.FontWeight = 'bold';

            % Create GridLayout26
            app.GridLayout26 = uigridlayout(app.DISTANCECALCULATIONPanel);
            app.GridLayout26.ColumnWidth = {'7x', '1x'};
            app.GridLayout26.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout26.RowSpacing = 4;
            app.GridLayout26.BackgroundColor = [1 1 1];

            % Create Button_RunChecks
            app.Button_RunChecks = uibutton(app.GridLayout26, 'push');
            app.Button_RunChecks.ButtonPushedFcn = createCallbackFcn(app, @Button_RunChecksPushed, true);
            app.Button_RunChecks.FontSize = 11;
            app.Button_RunChecks.Layout.Row = 1;
            app.Button_RunChecks.Layout.Column = [1 2];
            app.Button_RunChecks.Text = 'Pre-Run Checks';

            % Create CLA_DBdatabaseisloadedLabel
            app.CLA_DBdatabaseisloadedLabel = uilabel(app.GridLayout26);
            app.CLA_DBdatabaseisloadedLabel.HorizontalAlignment = 'right';
            app.CLA_DBdatabaseisloadedLabel.WordWrap = 'on';
            app.CLA_DBdatabaseisloadedLabel.FontSize = 10;
            app.CLA_DBdatabaseisloadedLabel.Layout.Row = 2;
            app.CLA_DBdatabaseisloadedLabel.Layout.Column = 1;
            app.CLA_DBdatabaseisloadedLabel.Text = 'CLA_DB database (observation data) is loaded';

            % Create Lamp_LoadedDataBase
            app.Lamp_LoadedDataBase = uilamp(app.GridLayout26);
            app.Lamp_LoadedDataBase.Layout.Row = 2;
            app.Lamp_LoadedDataBase.Layout.Column = 2;
            app.Lamp_LoadedDataBase.Color = [0.902 0.902 0.902];

            % Create GRIDisloadedLabel
            app.GRIDisloadedLabel = uilabel(app.GridLayout26);
            app.GRIDisloadedLabel.HorizontalAlignment = 'right';
            app.GRIDisloadedLabel.WordWrap = 'on';
            app.GRIDisloadedLabel.FontSize = 10;
            app.GRIDisloadedLabel.Layout.Row = 3;
            app.GRIDisloadedLabel.Layout.Column = 1;
            app.GRIDisloadedLabel.Text = 'GRID (requested definition of price points)is loaded';

            % Create Lamp_LoadedGRID
            app.Lamp_LoadedGRID = uilamp(app.GridLayout26);
            app.Lamp_LoadedGRID.Layout.Row = 3;
            app.Lamp_LoadedGRID.Layout.Column = 2;
            app.Lamp_LoadedGRID.Color = [0.902 0.902 0.902];

            % Create Button_Build_PopGrid
            app.Button_Build_PopGrid = uibutton(app.GridLayout26, 'push');
            app.Button_Build_PopGrid.ButtonPushedFcn = createCallbackFcn(app, @Button_Build_PopGridPushed, true);
            app.Button_Build_PopGrid.FontSize = 11;
            app.Button_Build_PopGrid.Layout.Row = 4;
            app.Button_Build_PopGrid.Layout.Column = [1 2];
            app.Button_Build_PopGrid.Text = 'Create List of Grid Cells';

            % Create UnpopulatedGRIDreadytoaddcaclulateddistancesLabel
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel = uilabel(app.GridLayout26);
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel.HorizontalAlignment = 'right';
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel.WordWrap = 'on';
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel.FontSize = 10;
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel.Layout.Row = 5;
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel.Layout.Column = 1;
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel.Text = 'Unpopulated GRID ready to add caclulated distances.';

            % Create Lamp_LoadedUnpopulatedGrid
            app.Lamp_LoadedUnpopulatedGrid = uilamp(app.GridLayout26);
            app.Lamp_LoadedUnpopulatedGrid.Layout.Row = 5;
            app.Lamp_LoadedUnpopulatedGrid.Layout.Column = 2;
            app.Lamp_LoadedUnpopulatedGrid.Color = [0.902 0.902 0.902];

            % Create Button_CalculateDistances
            app.Button_CalculateDistances = uibutton(app.GridLayout26, 'push');
            app.Button_CalculateDistances.ButtonPushedFcn = createCallbackFcn(app, @Button_CalculateDistancesPushed, true);
            app.Button_CalculateDistances.WordWrap = 'on';
            app.Button_CalculateDistances.FontSize = 11;
            app.Button_CalculateDistances.Layout.Row = 6;
            app.Button_CalculateDistances.Layout.Column = [1 2];
            app.Button_CalculateDistances.Text = {'Calculate Single '; 'Dimensional Distances'};

            % Create UnpopulatedGRIDreadytoaddcaclulateddistancesLabel_2
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel_2 = uilabel(app.GridLayout26);
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel_2.HorizontalAlignment = 'right';
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel_2.WordWrap = 'on';
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel_2.FontSize = 10;
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel_2.Layout.Row = 7;
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel_2.Layout.Column = 1;
            app.UnpopulatedGRIDreadytoaddcaclulateddistancesLabel_2.Text = 'Individual Distances  (along separate dimensions) Calculated';

            % Create Lamp_IndividualDistancesCalculated
            app.Lamp_IndividualDistancesCalculated = uilamp(app.GridLayout26);
            app.Lamp_IndividualDistancesCalculated.Layout.Row = 7;
            app.Lamp_IndividualDistancesCalculated.Layout.Column = 2;
            app.Lamp_IndividualDistancesCalculated.Color = [0.902 0.902 0.902];

            % Create Panel_MyProgBarBack
            app.Panel_MyProgBarBack = uipanel(app.GridLayout25);
            app.Panel_MyProgBarBack.Layout.Row = 12;
            app.Panel_MyProgBarBack.Layout.Column = [1 5];

            % Create Label_MyProgBar_Front
            app.Label_MyProgBar_Front = uilabel(app.Panel_MyProgBarBack);
            app.Label_MyProgBar_Front.BackgroundColor = [1 1 1];
            app.Label_MyProgBar_Front.FontSize = 8;
            app.Label_MyProgBar_Front.Position = [8 12 454 10];
            app.Label_MyProgBar_Front.Text = '';

            % Create Label_MyProgBarText
            app.Label_MyProgBarText = uilabel(app.Panel_MyProgBarBack);
            app.Label_MyProgBarText.FontSize = 9;
            app.Label_MyProgBarText.Position = [10 25 584 12];
            app.Label_MyProgBarText.Text = 'progress bar text';

            % Create CALCULATEPRICESTab
            app.CALCULATEPRICESTab = uitab(app.TabGroup);
            app.CALCULATEPRICESTab.Title = 'CALCULATE PRICES';
            app.CALCULATEPRICESTab.BackgroundColor = [1 1 1];

            % Create TabGroup3
            app.TabGroup3 = uitabgroup(app.CALCULATEPRICESTab);
            app.TabGroup3.Position = [11 10 606 405];

            % Create DimensionWeightsTab
            app.DimensionWeightsTab = uitab(app.TabGroup3);
            app.DimensionWeightsTab.Title = 'Dimension Weights';
            app.DimensionWeightsTab.BackgroundColor = [1 1 1];

            % Create GridLayout31
            app.GridLayout31 = uigridlayout(app.DimensionWeightsTab);
            app.GridLayout31.ColumnWidth = {'1x', '5x', '1x', '1x'};
            app.GridLayout31.RowHeight = {'2x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout31.ColumnSpacing = 4;
            app.GridLayout31.RowSpacing = 4;
            app.GridLayout31.Padding = [4 4 4 4];
            app.GridLayout31.BackgroundColor = [1 1 1];

            % Create TextArea_DimensionWts
            app.TextArea_DimensionWts = uitextarea(app.GridLayout31);
            app.TextArea_DimensionWts.FontSize = 10;
            app.TextArea_DimensionWts.Layout.Row = 1;
            app.TextArea_DimensionWts.Layout.Column = [1 4];
            app.TextArea_DimensionWts.Value = {'The dimension weights determine the relative importance of the various dimensions (fields) over which we measure distance. They do not need to sum to one here (we will normalize them later).  To set the dimension weights after entering them, click the green check mark button at the bottom right.'};

            % Create ProbabilityofDefaultRiskEditFieldLabel
            app.ProbabilityofDefaultRiskEditFieldLabel = uilabel(app.GridLayout31);
            app.ProbabilityofDefaultRiskEditFieldLabel.WordWrap = 'on';
            app.ProbabilityofDefaultRiskEditFieldLabel.FontSize = 9;
            app.ProbabilityofDefaultRiskEditFieldLabel.Layout.Row = 2;
            app.ProbabilityofDefaultRiskEditFieldLabel.Layout.Column = [2 3];
            app.ProbabilityofDefaultRiskEditFieldLabel.Text = 'PROBABILITY OF DEFAULT RISK: Determined by the "risk rating" related to the obligor of the loan and provided by the contributing bank.';

            % Create EditField_Risk
            app.EditField_Risk = uieditfield(app.GridLayout31, 'numeric');
            app.EditField_Risk.Limits = [0 Inf];
            app.EditField_Risk.HorizontalAlignment = 'center';
            app.EditField_Risk.Layout.Row = 2;
            app.EditField_Risk.Layout.Column = 1;
            app.EditField_Risk.Value = 5;

            % Create COLLATERALsecurityLabel
            app.COLLATERALsecurityLabel = uilabel(app.GridLayout31);
            app.COLLATERALsecurityLabel.WordWrap = 'on';
            app.COLLATERALsecurityLabel.FontSize = 9;
            app.COLLATERALsecurityLabel.Layout.Row = 3;
            app.COLLATERALsecurityLabel.Layout.Column = [2 3];
            app.COLLATERALsecurityLabel.Text = 'COLLATERAL: Loan collateral type (security) is determined based on the collateral grouping in the pricing grid.';

            % Create EditField_Collateral
            app.EditField_Collateral = uieditfield(app.GridLayout31, 'numeric');
            app.EditField_Collateral.Limits = [0 Inf];
            app.EditField_Collateral.HorizontalAlignment = 'center';
            app.EditField_Collateral.Layout.Row = 3;
            app.EditField_Collateral.Layout.Column = 1;
            app.EditField_Collateral.Value = 1;

            % Create GeographyasdefinedinthegridEditFieldLabel
            app.GeographyasdefinedinthegridEditFieldLabel = uilabel(app.GridLayout31);
            app.GeographyasdefinedinthegridEditFieldLabel.WordWrap = 'on';
            app.GeographyasdefinedinthegridEditFieldLabel.FontSize = 9;
            app.GeographyasdefinedinthegridEditFieldLabel.Layout.Row = 4;
            app.GeographyasdefinedinthegridEditFieldLabel.Layout.Column = [2 3];
            app.GeographyasdefinedinthegridEditFieldLabel.Text = 'GEOGRAPHY: Geography refers to the physical location of the borrower (as defined in the grid).  Geographical distance is not measure linearly, but based on a similarity in location.';

            % Create EditField_Geography
            app.EditField_Geography = uieditfield(app.GridLayout31, 'numeric');
            app.EditField_Geography.Limits = [0 Inf];
            app.EditField_Geography.HorizontalAlignment = 'center';
            app.EditField_Geography.Layout.Row = 4;
            app.EditField_Geography.Layout.Column = 1;
            app.EditField_Geography.Value = 6;

            % Create TermEditFieldLabel
            app.TermEditFieldLabel = uilabel(app.GridLayout31);
            app.TermEditFieldLabel.WordWrap = 'on';
            app.TermEditFieldLabel.FontSize = 9;
            app.TermEditFieldLabel.Layout.Row = 5;
            app.TermEditFieldLabel.Layout.Column = [2 3];
            app.TermEditFieldLabel.Text = 'TERM: The term (in months) is calculated by the difference between the facility effective date and the facility maturity date.';

            % Create EditField_Term
            app.EditField_Term = uieditfield(app.GridLayout31, 'numeric');
            app.EditField_Term.Limits = [0 Inf];
            app.EditField_Term.HorizontalAlignment = 'center';
            app.EditField_Term.Layout.Row = 5;
            app.EditField_Term.Layout.Column = 1;
            app.EditField_Term.Value = 10;

            % Create FACILITYSIZEDeterminedbytheCommitmentamountLabel
            app.FACILITYSIZEDeterminedbytheCommitmentamountLabel = uilabel(app.GridLayout31);
            app.FACILITYSIZEDeterminedbytheCommitmentamountLabel.FontSize = 9;
            app.FACILITYSIZEDeterminedbytheCommitmentamountLabel.Layout.Row = 6;
            app.FACILITYSIZEDeterminedbytheCommitmentamountLabel.Layout.Column = [2 3];
            app.FACILITYSIZEDeterminedbytheCommitmentamountLabel.Text = 'FACILITY SIZE: Determined by the Commitment amount ';

            % Create EditField_Size
            app.EditField_Size = uieditfield(app.GridLayout31, 'numeric');
            app.EditField_Size.Limits = [0 Inf];
            app.EditField_Size.HorizontalAlignment = 'center';
            app.EditField_Size.Layout.Row = 6;
            app.EditField_Size.Layout.Column = 1;
            app.EditField_Size.Value = 10;

            % Create FACILITYTYPEFacilityTypemayberevolvingornonrevolvingLabel
            app.FACILITYTYPEFacilityTypemayberevolvingornonrevolvingLabel = uilabel(app.GridLayout31);
            app.FACILITYTYPEFacilityTypemayberevolvingornonrevolvingLabel.FontSize = 9;
            app.FACILITYTYPEFacilityTypemayberevolvingornonrevolvingLabel.Layout.Row = 7;
            app.FACILITYTYPEFacilityTypemayberevolvingornonrevolvingLabel.Layout.Column = [2 3];
            app.FACILITYTYPEFacilityTypemayberevolvingornonrevolvingLabel.Text = 'FACILITY TYPE: Facility Type may be revolving or non-revolving.';

            % Create EditField_FacilityType
            app.EditField_FacilityType = uieditfield(app.GridLayout31, 'numeric');
            app.EditField_FacilityType.Limits = [0 Inf];
            app.EditField_FacilityType.HorizontalAlignment = 'center';
            app.EditField_FacilityType.Layout.Row = 7;
            app.EditField_FacilityType.Layout.Column = 1;
            app.EditField_FacilityType.Value = 1;

            % Create EditField_7Label
            app.EditField_7Label = uilabel(app.GridLayout31);
            app.EditField_7Label.WordWrap = 'on';
            app.EditField_7Label.FontSize = 9;
            app.EditField_7Label.Layout.Row = 8;
            app.EditField_7Label.Layout.Column = [2 3];
            app.EditField_7Label.Text = 'INDUSTRY GROUP: Industry (based on groups defined in grid tied back to 2-digit NAICS codes)';

            % Create EditField_Industry
            app.EditField_Industry = uieditfield(app.GridLayout31, 'numeric');
            app.EditField_Industry.Limits = [0 Inf];
            app.EditField_Industry.HorizontalAlignment = 'center';
            app.EditField_Industry.Layout.Row = 8;
            app.EditField_Industry.Layout.Column = 1;
            app.EditField_Industry.Value = 10;

            % Create EditField_8Label
            app.EditField_8Label = uilabel(app.GridLayout31);
            app.EditField_8Label.WordWrap = 'on';
            app.EditField_8Label.FontSize = 9;
            app.EditField_8Label.Layout.Row = 9;
            app.EditField_8Label.Layout.Column = [2 3];
            app.EditField_8Label.Text = 'LAG. Historical pricing observation data are included in the interpolation. A larger weight on "Lag" will reduce the effect that older pricing points have on the interpolated point.';

            % Create EditField_Lag
            app.EditField_Lag = uieditfield(app.GridLayout31, 'numeric');
            app.EditField_Lag.Limits = [0 Inf];
            app.EditField_Lag.HorizontalAlignment = 'center';
            app.EditField_Lag.Layout.Row = 9;
            app.EditField_Lag.Layout.Column = 1;
            app.EditField_Lag.Value = 5;

            % Create Button_SetDimensionWeights
            app.Button_SetDimensionWeights = uibutton(app.GridLayout31, 'push');
            app.Button_SetDimensionWeights.ButtonPushedFcn = createCallbackFcn(app, @Button_SetDimensionWeightsPushed, true);
            app.Button_SetDimensionWeights.Icon = fullfile(pathToMLAPP, 'AppImages', 'greenCheck.png');
            app.Button_SetDimensionWeights.BackgroundColor = [1 1 1];
            app.Button_SetDimensionWeights.Tooltip = {'Set the dimension weights as per the edit fields above.'};
            app.Button_SetDimensionWeights.Layout.Row = 9;
            app.Button_SetDimensionWeights.Layout.Column = 4;
            app.Button_SetDimensionWeights.Text = '';

            % Create Button_CalculateGowerDistance
            app.Button_CalculateGowerDistance = uibutton(app.GridLayout31, 'push');
            app.Button_CalculateGowerDistance.ButtonPushedFcn = createCallbackFcn(app, @Button_CalculateGowerDistancePushed, true);
            app.Button_CalculateGowerDistance.FontSize = 9;
            app.Button_CalculateGowerDistance.Layout.Row = 10;
            app.Button_CalculateGowerDistance.Layout.Column = [3 4];
            app.Button_CalculateGowerDistance.Text = {'Calculate Overall'; '(Multi-Dimensional) Distance'};

            % Create SmoothingParametersTab
            app.SmoothingParametersTab = uitab(app.TabGroup3);
            app.SmoothingParametersTab.Title = 'Smoothing Parameters';
            app.SmoothingParametersTab.BackgroundColor = [1 1 1];

            % Create GridLayout30
            app.GridLayout30 = uigridlayout(app.SmoothingParametersTab);
            app.GridLayout30.ColumnWidth = {'2x', '1x', '2x', '1x', '1x', '1x', '1x'};
            app.GridLayout30.RowHeight = {'0.75x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout30.ColumnSpacing = 4;
            app.GridLayout30.RowSpacing = 4;
            app.GridLayout30.Padding = [4 4 4 4];
            app.GridLayout30.BackgroundColor = [1 1 1];

            % Create UIAxes_DistWeights
            app.UIAxes_DistWeights = uiaxes(app.GridLayout30);
            title(app.UIAxes_DistWeights, 'Distance Weight Factor')
            xlabel(app.UIAxes_DistWeights, 'Distance')
            ylabel(app.UIAxes_DistWeights, 'Weight')
            zlabel(app.UIAxes_DistWeights, 'Z')
            app.UIAxes_DistWeights.XGrid = 'on';
            app.UIAxes_DistWeights.XMinorGrid = 'on';
            app.UIAxes_DistWeights.YGrid = 'on';
            app.UIAxes_DistWeights.YMinorGrid = 'on';
            app.UIAxes_DistWeights.FontSize = 10;
            app.UIAxes_DistWeights.Layout.Row = [7 10];
            app.UIAxes_DistWeights.Layout.Column = [1 4];

            % Create AdjusttheSmoothingZoomParametersLabel
            app.AdjusttheSmoothingZoomParametersLabel = uilabel(app.GridLayout30);
            app.AdjusttheSmoothingZoomParametersLabel.BackgroundColor = [1 1 1];
            app.AdjusttheSmoothingZoomParametersLabel.FontWeight = 'bold';
            app.AdjusttheSmoothingZoomParametersLabel.Layout.Row = 1;
            app.AdjusttheSmoothingZoomParametersLabel.Layout.Column = [1 7];
            app.AdjusttheSmoothingZoomParametersLabel.Text = 'Adjust the Smoothing (Zoom) Parameters';

            % Create TextArea
            app.TextArea = uitextarea(app.GridLayout30);
            app.TextArea.FontName = 'Arial Narrow';
            app.TextArea.FontSize = 10;
            app.TextArea.Layout.Row = [2 3];
            app.TextArea.Layout.Column = [1 7];
            app.TextArea.Value = {'The  number of points included in the calculation of the interpolated spread is determined based on a distance threshold and a minimum number of observations parameter.  First, all of the observations within the initial distance threshold are located.  If there are at least the minimum required number of points found, these are the points used in the calculation.  If there is an insufficient number of points within the starting distance threshold, the threshold is widened incrementally until at least the minimum required number of points are found.  Increaseing the minimum required number of points, or increasing the initial distance threshold will have the effect of smoothing the overall grid.'};

            % Create TESTminrequirednumberofpointsLabel
            app.TESTminrequirednumberofpointsLabel = uilabel(app.GridLayout30);
            app.TESTminrequirednumberofpointsLabel.HorizontalAlignment = 'right';
            app.TESTminrequirednumberofpointsLabel.WordWrap = 'on';
            app.TESTminrequirednumberofpointsLabel.FontSize = 10;
            app.TESTminrequirednumberofpointsLabel.Layout.Row = 4;
            app.TESTminrequirednumberofpointsLabel.Layout.Column = 1;
            app.TESTminrequirednumberofpointsLabel.Text = 'TEST min required number of points';

            % Create EditField_MinReqPoints_Test
            app.EditField_MinReqPoints_Test = uieditfield(app.GridLayout30, 'numeric');
            app.EditField_MinReqPoints_Test.Limits = [1 Inf];
            app.EditField_MinReqPoints_Test.Layout.Row = 4;
            app.EditField_MinReqPoints_Test.Layout.Column = 2;
            app.EditField_MinReqPoints_Test.Value = 10;

            % Create TESTinitialthresholdLabel
            app.TESTinitialthresholdLabel = uilabel(app.GridLayout30);
            app.TESTinitialthresholdLabel.HorizontalAlignment = 'right';
            app.TESTinitialthresholdLabel.WordWrap = 'on';
            app.TESTinitialthresholdLabel.FontSize = 10;
            app.TESTinitialthresholdLabel.Layout.Row = 4;
            app.TESTinitialthresholdLabel.Layout.Column = 3;
            app.TESTinitialthresholdLabel.Text = 'TEST initial threshold';

            % Create EditField_StartDistThresh_Test
            app.EditField_StartDistThresh_Test = uieditfield(app.GridLayout30, 'numeric');
            app.EditField_StartDistThresh_Test.Limits = [0.001 1];
            app.EditField_StartDistThresh_Test.Layout.Row = 4;
            app.EditField_StartDistThresh_Test.Layout.Column = 4;
            app.EditField_StartDistThresh_Test.Value = 0.1;

            % Create NewDWFSlider
            app.NewDWFSlider = uislider(app.GridLayout30);
            app.NewDWFSlider.Limits = [3 20];
            app.NewDWFSlider.MajorTicks = [3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20];
            app.NewDWFSlider.ValueChangedFcn = createCallbackFcn(app, @NewDWFSliderValueChanged, true);
            app.NewDWFSlider.MinorTicks = [];
            app.NewDWFSlider.FontSize = 9;
            app.NewDWFSlider.BusyAction = 'cancel';
            app.NewDWFSlider.Layout.Row = 11;
            app.NewDWFSlider.Layout.Column = [1 4];
            app.NewDWFSlider.Value = 3;

            % Create TextArea_2
            app.TextArea_2 = uitextarea(app.GridLayout30);
            app.TextArea_2.FontName = 'Arial Narrow';
            app.TextArea_2.FontSize = 10;
            app.TextArea_2.Layout.Row = [6 7];
            app.TextArea_2.Layout.Column = [5 7];
            app.TextArea_2.Value = {'The confidence score is derived based on both the number of points used in the calculation and the weighted average distance to each point.  The weight placed on the distance factor can be tested below.'};

            % Create TESTweightondistanceEditFieldLabel
            app.TESTweightondistanceEditFieldLabel = uilabel(app.GridLayout30);
            app.TESTweightondistanceEditFieldLabel.HorizontalAlignment = 'right';
            app.TESTweightondistanceEditFieldLabel.WordWrap = 'on';
            app.TESTweightondistanceEditFieldLabel.FontSize = 10;
            app.TESTweightondistanceEditFieldLabel.Layout.Row = 8;
            app.TESTweightondistanceEditFieldLabel.Layout.Column = 6;
            app.TESTweightondistanceEditFieldLabel.Text = 'TEST weight on distance';

            % Create EditField_ConfFactorDistWt_TEST
            app.EditField_ConfFactorDistWt_TEST = uieditfield(app.GridLayout30, 'numeric');
            app.EditField_ConfFactorDistWt_TEST.Limits = [0 1];
            app.EditField_ConfFactorDistWt_TEST.FontSize = 10;
            app.EditField_ConfFactorDistWt_TEST.Layout.Row = 8;
            app.EditField_ConfFactorDistWt_TEST.Layout.Column = 7;
            app.EditField_ConfFactorDistWt_TEST.Value = 0.5;

            % Create TextArea_3
            app.TextArea_3 = uitextarea(app.GridLayout30);
            app.TextArea_3.FontName = 'Arial Narrow';
            app.TextArea_3.FontSize = 9;
            app.TextArea_3.Layout.Row = 5;
            app.TextArea_3.Layout.Column = [1 7];
            app.TextArea_3.Value = {'The distance weights are calculated using a distance weight factor ("dwf").  The weights are calculated such that the smallest distance weight  is equal to 1/dwf.  Decreasing the distance weight factor will tend to smooth the results.'};

            % Create TESTWeightFactorLabel
            app.TESTWeightFactorLabel = uilabel(app.GridLayout30);
            app.TESTWeightFactorLabel.HorizontalAlignment = 'right';
            app.TESTWeightFactorLabel.WordWrap = 'on';
            app.TESTWeightFactorLabel.FontSize = 10;
            app.TESTWeightFactorLabel.Layout.Row = 6;
            app.TESTWeightFactorLabel.Layout.Column = 1;
            app.TESTWeightFactorLabel.Text = 'TEST Weight Factor';

            % Create EditField_DistWtFact_Test
            app.EditField_DistWtFact_Test = uieditfield(app.GridLayout30, 'numeric');
            app.EditField_DistWtFact_Test.Limits = [1 20];
            app.EditField_DistWtFact_Test.Editable = 'off';
            app.EditField_DistWtFact_Test.Layout.Row = 6;
            app.EditField_DistWtFact_Test.Layout.Column = 2;
            app.EditField_DistWtFact_Test.Value = 5;

            % Create Button_SetSmoothParams
            app.Button_SetSmoothParams = uibutton(app.GridLayout30, 'push');
            app.Button_SetSmoothParams.ButtonPushedFcn = createCallbackFcn(app, @Button_SetSmoothParamsPushed, true);
            app.Button_SetSmoothParams.Icon = fullfile(pathToMLAPP, 'AppImages', 'greenCheck.png');
            app.Button_SetSmoothParams.WordWrap = 'on';
            app.Button_SetSmoothParams.BackgroundColor = [1 1 1];
            app.Button_SetSmoothParams.FontSize = 9;
            app.Button_SetSmoothParams.Tooltip = {'Set the smoothing parameters to those in this tab.'};
            app.Button_SetSmoothParams.Layout.Row = 11;
            app.Button_SetSmoothParams.Layout.Column = 7;
            app.Button_SetSmoothParams.Text = '';

            % Create NearbyPointAnalysisTab
            app.NearbyPointAnalysisTab = uitab(app.TabGroup3);
            app.NearbyPointAnalysisTab.Title = 'Nearby Point Analysis';
            app.NearbyPointAnalysisTab.BackgroundColor = [1 1 1];

            % Create GridLayout32
            app.GridLayout32 = uigridlayout(app.NearbyPointAnalysisTab);
            app.GridLayout32.ColumnWidth = {'2x', '1x', '1x', '1x', '1x', '1x', '10x', '0.35x'};
            app.GridLayout32.RowHeight = {'1x', '0.75x', '0.75x', '1x', '1x', '1x', '1x', '0.7x', '0.5x', '1x', '1x', '1x', '1.75x'};
            app.GridLayout32.ColumnSpacing = 5;
            app.GridLayout32.RowSpacing = 3;
            app.GridLayout32.Padding = [5 5 5 5];
            app.GridLayout32.BackgroundColor = [1 1 1];

            % Create UITable_NearbyPoints
            app.UITable_NearbyPoints = uitable(app.GridLayout32);
            app.UITable_NearbyPoints.ColumnName = '';
            app.UITable_NearbyPoints.RowName = {};
            app.UITable_NearbyPoints.Layout.Row = [10 13];
            app.UITable_NearbyPoints.Layout.Column = [3 8];
            app.UITable_NearbyPoints.FontSize = 8;

            % Create Button_PreRunChecks
            app.Button_PreRunChecks = uibutton(app.GridLayout32, 'push');
            app.Button_PreRunChecks.ButtonPushedFcn = createCallbackFcn(app, @Button_PreRunChecksPushed, true);
            app.Button_PreRunChecks.WordWrap = 'on';
            app.Button_PreRunChecks.FontSize = 9;
            app.Button_PreRunChecks.Layout.Row = 1;
            app.Button_PreRunChecks.Layout.Column = [1 2];
            app.Button_PreRunChecks.Text = 'Pre-Run Checks';

            % Create Button_CalculatePrices
            app.Button_CalculatePrices = uibutton(app.GridLayout32, 'push');
            app.Button_CalculatePrices.ButtonPushedFcn = createCallbackFcn(app, @Button_CalculatePricesPushed, true);
            app.Button_CalculatePrices.WordWrap = 'on';
            app.Button_CalculatePrices.FontSize = 9;
            app.Button_CalculatePrices.Layout.Row = 4;
            app.Button_CalculatePrices.Layout.Column = [1 2];
            app.Button_CalculatePrices.Text = 'Calculate Interpolated Prices';

            % Create TextArea_NearbyPointNotes
            app.TextArea_NearbyPointNotes = uitextarea(app.GridLayout32);
            app.TextArea_NearbyPointNotes.FontName = 'Consolas';
            app.TextArea_NearbyPointNotes.FontSize = 10;
            app.TextArea_NearbyPointNotes.Placeholder = 'Any notes associated with the interpolation process will be displayed here.';
            app.TextArea_NearbyPointNotes.Layout.Row = [5 13];
            app.TextArea_NearbyPointNotes.Layout.Column = [1 2];

            % Create DataCheckLabel
            app.DataCheckLabel = uilabel(app.GridLayout32);
            app.DataCheckLabel.HorizontalAlignment = 'right';
            app.DataCheckLabel.FontSize = 9;
            app.DataCheckLabel.Layout.Row = 2;
            app.DataCheckLabel.Layout.Column = 1;
            app.DataCheckLabel.Text = 'Parameters';

            % Create Lamp_ParamsOKforPriceRun
            app.Lamp_ParamsOKforPriceRun = uilamp(app.GridLayout32);
            app.Lamp_ParamsOKforPriceRun.Layout.Row = 2;
            app.Lamp_ParamsOKforPriceRun.Layout.Column = 2;
            app.Lamp_ParamsOKforPriceRun.Color = [0.902 0.902 0.902];

            % Create GridCheckLabel
            app.GridCheckLabel = uilabel(app.GridLayout32);
            app.GridCheckLabel.HorizontalAlignment = 'right';
            app.GridCheckLabel.FontSize = 9;
            app.GridCheckLabel.Layout.Row = 3;
            app.GridCheckLabel.Layout.Column = 1;
            app.GridCheckLabel.Text = 'Grid Check';

            % Create Lamp_POPGridOKForPricing
            app.Lamp_POPGridOKForPricing = uilamp(app.GridLayout32);
            app.Lamp_POPGridOKForPricing.Layout.Row = 3;
            app.Lamp_POPGridOKForPricing.Layout.Column = 2;
            app.Lamp_POPGridOKForPricing.Color = [0.902 0.902 0.902];

            % Create Panel_Map
            app.Panel_Map = uipanel(app.GridLayout32);
            app.Panel_Map.BackgroundColor = [1 1 1];
            app.Panel_Map.Layout.Row = [1 7];
            app.Panel_Map.Layout.Column = [7 8];

            % Create Panel_MapButtons
            app.Panel_MapButtons = uipanel(app.GridLayout32);
            app.Panel_MapButtons.BackgroundColor = [1 1 1];
            app.Panel_MapButtons.Layout.Row = [1 7];
            app.Panel_MapButtons.Layout.Column = [3 6];

            % Create GridLayout33
            app.GridLayout33 = uigridlayout(app.Panel_MapButtons);
            app.GridLayout33.ColumnWidth = {'1x', '1x', '1x'};
            app.GridLayout33.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout33.ColumnSpacing = 4;
            app.GridLayout33.RowSpacing = 4;
            app.GridLayout33.Padding = [4 4 4 4];
            app.GridLayout33.BackgroundColor = [1 1 1];

            % Create Button_MapPrices
            app.Button_MapPrices = uibutton(app.GridLayout33, 'push');
            app.Button_MapPrices.ButtonPushedFcn = createCallbackFcn(app, @Button_MapPricesPushed, true);
            app.Button_MapPrices.Icon = fullfile(pathToMLAPP, 'AppImages', 'Map01.png');
            app.Button_MapPrices.Layout.Row = 7;
            app.Button_MapPrices.Layout.Column = 3;
            app.Button_MapPrices.Text = '';

            % Create DropDown_Risk
            app.DropDown_Risk = uidropdown(app.GridLayout33);
            app.DropDown_Risk.Items = {};
            app.DropDown_Risk.FontSize = 9;
            app.DropDown_Risk.Layout.Row = 1;
            app.DropDown_Risk.Layout.Column = [2 3];
            app.DropDown_Risk.Value = {};

            % Create DropDown_Collateral
            app.DropDown_Collateral = uidropdown(app.GridLayout33);
            app.DropDown_Collateral.Items = {};
            app.DropDown_Collateral.FontSize = 9;
            app.DropDown_Collateral.Layout.Row = 2;
            app.DropDown_Collateral.Layout.Column = [2 3];
            app.DropDown_Collateral.Value = {};

            % Create DropDown_Size
            app.DropDown_Size = uidropdown(app.GridLayout33);
            app.DropDown_Size.Items = {};
            app.DropDown_Size.FontSize = 9;
            app.DropDown_Size.Layout.Row = 3;
            app.DropDown_Size.Layout.Column = [2 3];
            app.DropDown_Size.Value = {};

            % Create DropDown_Term
            app.DropDown_Term = uidropdown(app.GridLayout33);
            app.DropDown_Term.Items = {};
            app.DropDown_Term.FontSize = 9;
            app.DropDown_Term.Layout.Row = 4;
            app.DropDown_Term.Layout.Column = [2 3];
            app.DropDown_Term.Value = {};

            % Create DropDown_Industry
            app.DropDown_Industry = uidropdown(app.GridLayout33);
            app.DropDown_Industry.Items = {};
            app.DropDown_Industry.FontSize = 9;
            app.DropDown_Industry.Layout.Row = 5;
            app.DropDown_Industry.Layout.Column = [2 3];
            app.DropDown_Industry.Value = {};

            % Create DropDown_FacilityType
            app.DropDown_FacilityType = uidropdown(app.GridLayout33);
            app.DropDown_FacilityType.Items = {};
            app.DropDown_FacilityType.FontSize = 9;
            app.DropDown_FacilityType.Layout.Row = 6;
            app.DropDown_FacilityType.Layout.Column = [2 3];
            app.DropDown_FacilityType.Value = {};

            % Create Label_RiskDropDown
            app.Label_RiskDropDown = uilabel(app.GridLayout33);
            app.Label_RiskDropDown.FontSize = 9;
            app.Label_RiskDropDown.Layout.Row = 1;
            app.Label_RiskDropDown.Layout.Column = 1;
            app.Label_RiskDropDown.Text = 'Risk (PD)';

            % Create Label_CollateralDropDown
            app.Label_CollateralDropDown = uilabel(app.GridLayout33);
            app.Label_CollateralDropDown.FontSize = 9;
            app.Label_CollateralDropDown.Layout.Row = 2;
            app.Label_CollateralDropDown.Layout.Column = 1;
            app.Label_CollateralDropDown.Text = 'Collateral';

            % Create Label_SizeDropDown
            app.Label_SizeDropDown = uilabel(app.GridLayout33);
            app.Label_SizeDropDown.FontSize = 9;
            app.Label_SizeDropDown.Layout.Row = 3;
            app.Label_SizeDropDown.Layout.Column = 1;
            app.Label_SizeDropDown.Text = 'Size';

            % Create Label_TermDropDown
            app.Label_TermDropDown = uilabel(app.GridLayout33);
            app.Label_TermDropDown.FontSize = 9;
            app.Label_TermDropDown.Layout.Row = 4;
            app.Label_TermDropDown.Layout.Column = 1;
            app.Label_TermDropDown.Text = 'Term';

            % Create Label_IndustryDropDown
            app.Label_IndustryDropDown = uilabel(app.GridLayout33);
            app.Label_IndustryDropDown.FontSize = 9;
            app.Label_IndustryDropDown.Layout.Row = 5;
            app.Label_IndustryDropDown.Layout.Column = 1;
            app.Label_IndustryDropDown.Text = 'Industry';

            % Create Label_FacilityTypeDropDown
            app.Label_FacilityTypeDropDown = uilabel(app.GridLayout33);
            app.Label_FacilityTypeDropDown.WordWrap = 'on';
            app.Label_FacilityTypeDropDown.FontSize = 9;
            app.Label_FacilityTypeDropDown.Layout.Row = 6;
            app.Label_FacilityTypeDropDown.Layout.Column = 1;
            app.Label_FacilityTypeDropDown.Text = 'Type';

            % Create GridLayout_NBPTable
            app.GridLayout_NBPTable = uigridlayout(app.GridLayout32);
            app.GridLayout_NBPTable.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout_NBPTable.RowHeight = {11};
            app.GridLayout_NBPTable.ColumnSpacing = 1;
            app.GridLayout_NBPTable.RowSpacing = 1;
            app.GridLayout_NBPTable.Padding = [1 1 1 1];
            app.GridLayout_NBPTable.Layout.Row = 9;
            app.GridLayout_NBPTable.Layout.Column = [3 7];
            app.GridLayout_NBPTable.BackgroundColor = [0.7686 0.349 0.0706];

            % Create Label_NBPTab01
            app.Label_NBPTab01 = uilabel(app.GridLayout_NBPTable);
            app.Label_NBPTab01.BackgroundColor = [1 1 1];
            app.Label_NBPTab01.HorizontalAlignment = 'center';
            app.Label_NBPTab01.VerticalAlignment = 'bottom';
            app.Label_NBPTab01.FontSize = 9;
            app.Label_NBPTab01.Layout.Row = 1;
            app.Label_NBPTab01.Layout.Column = 11;
            app.Label_NBPTab01.Text = 'Geog.';

            % Create Label_NBPTab02
            app.Label_NBPTab02 = uilabel(app.GridLayout_NBPTable);
            app.Label_NBPTab02.BackgroundColor = [1 1 1];
            app.Label_NBPTab02.HorizontalAlignment = 'center';
            app.Label_NBPTab02.VerticalAlignment = 'bottom';
            app.Label_NBPTab02.FontSize = 9;
            app.Label_NBPTab02.Layout.Row = 1;
            app.Label_NBPTab02.Layout.Column = 10;
            app.Label_NBPTab02.Text = 'Indust.';

            % Create Label_NBPTab03
            app.Label_NBPTab03 = uilabel(app.GridLayout_NBPTable);
            app.Label_NBPTab03.BackgroundColor = [1 1 1];
            app.Label_NBPTab03.HorizontalAlignment = 'center';
            app.Label_NBPTab03.VerticalAlignment = 'bottom';
            app.Label_NBPTab03.FontSize = 9;
            app.Label_NBPTab03.Layout.Row = 1;
            app.Label_NBPTab03.Layout.Column = 9;
            app.Label_NBPTab03.Text = 'Collat.';

            % Create Label_NBPTab04
            app.Label_NBPTab04 = uilabel(app.GridLayout_NBPTable);
            app.Label_NBPTab04.BackgroundColor = [1 1 1];
            app.Label_NBPTab04.HorizontalAlignment = 'center';
            app.Label_NBPTab04.VerticalAlignment = 'bottom';
            app.Label_NBPTab04.FontSize = 9;
            app.Label_NBPTab04.Layout.Row = 1;
            app.Label_NBPTab04.Layout.Column = 8;
            app.Label_NBPTab04.Text = 'Term';

            % Create Label_NBPTab05
            app.Label_NBPTab05 = uilabel(app.GridLayout_NBPTable);
            app.Label_NBPTab05.BackgroundColor = [1 1 1];
            app.Label_NBPTab05.HorizontalAlignment = 'center';
            app.Label_NBPTab05.VerticalAlignment = 'bottom';
            app.Label_NBPTab05.FontSize = 9;
            app.Label_NBPTab05.Layout.Row = 1;
            app.Label_NBPTab05.Layout.Column = 7;
            app.Label_NBPTab05.Text = 'Risk';

            % Create Label_NBPTab06
            app.Label_NBPTab06 = uilabel(app.GridLayout_NBPTable);
            app.Label_NBPTab06.BackgroundColor = [1 1 1];
            app.Label_NBPTab06.HorizontalAlignment = 'center';
            app.Label_NBPTab06.VerticalAlignment = 'bottom';
            app.Label_NBPTab06.FontSize = 9;
            app.Label_NBPTab06.Layout.Row = 1;
            app.Label_NBPTab06.Layout.Column = 6;
            app.Label_NBPTab06.Text = 'Size';

            % Create Label_NBPTab07
            app.Label_NBPTab07 = uilabel(app.GridLayout_NBPTable);
            app.Label_NBPTab07.BackgroundColor = [1 1 1];
            app.Label_NBPTab07.HorizontalAlignment = 'center';
            app.Label_NBPTab07.VerticalAlignment = 'bottom';
            app.Label_NBPTab07.FontSize = 9;
            app.Label_NBPTab07.Layout.Row = 1;
            app.Label_NBPTab07.Layout.Column = 5;
            app.Label_NBPTab07.Text = 'Fac.Type';

            % Create Label_NBPTab08
            app.Label_NBPTab08 = uilabel(app.GridLayout_NBPTable);
            app.Label_NBPTab08.BackgroundColor = [1 1 1];
            app.Label_NBPTab08.HorizontalAlignment = 'center';
            app.Label_NBPTab08.VerticalAlignment = 'bottom';
            app.Label_NBPTab08.FontSize = 9;
            app.Label_NBPTab08.Layout.Row = 1;
            app.Label_NBPTab08.Layout.Column = 1;
            app.Label_NBPTab08.Text = 'ObsID';

            % Create Label_NBPTab08_2
            app.Label_NBPTab08_2 = uilabel(app.GridLayout_NBPTable);
            app.Label_NBPTab08_2.BackgroundColor = [1 1 1];
            app.Label_NBPTab08_2.HorizontalAlignment = 'center';
            app.Label_NBPTab08_2.VerticalAlignment = 'bottom';
            app.Label_NBPTab08_2.FontSize = 9;
            app.Label_NBPTab08_2.Layout.Row = 1;
            app.Label_NBPTab08_2.Layout.Column = 2;
            app.Label_NBPTab08_2.Text = 'Dist';

            % Create Label_NBPTab08_3
            app.Label_NBPTab08_3 = uilabel(app.GridLayout_NBPTable);
            app.Label_NBPTab08_3.BackgroundColor = [1 1 1];
            app.Label_NBPTab08_3.HorizontalAlignment = 'center';
            app.Label_NBPTab08_3.VerticalAlignment = 'bottom';
            app.Label_NBPTab08_3.FontSize = 9;
            app.Label_NBPTab08_3.Layout.Row = 1;
            app.Label_NBPTab08_3.Layout.Column = 3;
            app.Label_NBPTab08_3.Text = 'SPR';

            % Create Label_NBPTab08_4
            app.Label_NBPTab08_4 = uilabel(app.GridLayout_NBPTable);
            app.Label_NBPTab08_4.BackgroundColor = [1 1 1];
            app.Label_NBPTab08_4.HorizontalAlignment = 'center';
            app.Label_NBPTab08_4.VerticalAlignment = 'bottom';
            app.Label_NBPTab08_4.FontSize = 9;
            app.Label_NBPTab08_4.Layout.Row = 1;
            app.Label_NBPTab08_4.Layout.Column = 4;
            app.Label_NBPTab08_4.Text = 'Lag';

            % Create GridLayout35
            app.GridLayout35 = uigridlayout(app.GridLayout32);
            app.GridLayout35.ColumnWidth = {'1x', '1x', '1x', '1x', '2x', '1x', '2x', '1x'};
            app.GridLayout35.RowHeight = {'1x'};
            app.GridLayout35.ColumnSpacing = 4;
            app.GridLayout35.RowSpacing = 0;
            app.GridLayout35.Padding = [0 0 0 0];
            app.GridLayout35.Layout.Row = 8;
            app.GridLayout35.Layout.Column = [3 8];
            app.GridLayout35.BackgroundColor = [1 1 1];

            % Create WtdAverageDistanceLabel
            app.WtdAverageDistanceLabel = uilabel(app.GridLayout35);
            app.WtdAverageDistanceLabel.HorizontalAlignment = 'right';
            app.WtdAverageDistanceLabel.FontSize = 9;
            app.WtdAverageDistanceLabel.Layout.Row = 1;
            app.WtdAverageDistanceLabel.Layout.Column = 5;
            app.WtdAverageDistanceLabel.Text = 'Wtd. Avg Distance';

            % Create EditField_WtgAvgDistSelected
            app.EditField_WtgAvgDistSelected = uieditfield(app.GridLayout35, 'numeric');
            app.EditField_WtgAvgDistSelected.FontSize = 9;
            app.EditField_WtgAvgDistSelected.Layout.Row = 1;
            app.EditField_WtgAvgDistSelected.Layout.Column = 6;

            % Create ConfidenceScoreLabel
            app.ConfidenceScoreLabel = uilabel(app.GridLayout35);
            app.ConfidenceScoreLabel.HorizontalAlignment = 'right';
            app.ConfidenceScoreLabel.FontSize = 9;
            app.ConfidenceScoreLabel.Layout.Row = 1;
            app.ConfidenceScoreLabel.Layout.Column = 7;
            app.ConfidenceScoreLabel.Text = 'Confidence Score';

            % Create EditField_ConfidenceScore
            app.EditField_ConfidenceScore = uieditfield(app.GridLayout35, 'text');
            app.EditField_ConfidenceScore.FontSize = 9;
            app.EditField_ConfidenceScore.Layout.Row = 1;
            app.EditField_ConfidenceScore.Layout.Column = 8;

            % Create SpreadLabel
            app.SpreadLabel = uilabel(app.GridLayout35);
            app.SpreadLabel.HorizontalAlignment = 'right';
            app.SpreadLabel.FontSize = 9;
            app.SpreadLabel.Layout.Row = 1;
            app.SpreadLabel.Layout.Column = 1;
            app.SpreadLabel.Text = 'Spread';

            % Create EditField_SpreadSelected
            app.EditField_SpreadSelected = uieditfield(app.GridLayout35, 'numeric');
            app.EditField_SpreadSelected.FontSize = 9;
            app.EditField_SpreadSelected.Layout.Row = 1;
            app.EditField_SpreadSelected.Layout.Column = 2;

            % Create numptsEditFieldLabel
            app.numptsEditFieldLabel = uilabel(app.GridLayout35);
            app.numptsEditFieldLabel.HorizontalAlignment = 'right';
            app.numptsEditFieldLabel.FontSize = 9;
            app.numptsEditFieldLabel.Layout.Row = 1;
            app.numptsEditFieldLabel.Layout.Column = 3;
            app.numptsEditFieldLabel.Text = 'num. pts.';

            % Create EditField_numpts
            app.EditField_numpts = uieditfield(app.GridLayout35, 'numeric');
            app.EditField_numpts.FontSize = 9;
            app.EditField_numpts.Layout.Row = 1;
            app.EditField_numpts.Layout.Column = 4;

            % Show the figure after all components are created
            app.CLAInterpolatorUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = CLAInterpolator_0_972_exported

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.CLAInterpolatorUIFigure)

                % Execute the startup function
                runStartupFcn(app, @startupFcn)
            else

                % Focus the running singleton app
                figure(runningApp.CLAInterpolatorUIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.CLAInterpolatorUIFigure)
        end
    end
end