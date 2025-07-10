function [T,TFull,TFullwZips,LocVarsTab] = defGeographyTable(LocationDatabaseTable,varargin)
% 
% Creates the default Geography Table given the LocationDatabase Table. The
% Geography table consists of the geography breakdown based on the
% geography level variables (deVars), plus a "Geographies" variable holding
% the ids for all of the location variables in a single field.
% 

% Get any optional arguments and set properties accordingly
% Set the input parser
p = inputParser;

% LocNameVars
def = {'Location_r_NameRegion','Location_mr_NameMetroRural'};
defmsg = sprintf('Problem with the location name variables, the value must be a cell array of chars.');
addParameter(p,'LocNameVars',def,...
    @(x)...
    assert(iscell(x),...
    defmsg)...
    );

% Parse and set results
parse(p,varargin{:});
locNameVars = p.Results.LocNameVars;


% Include the Provided Geography Level Variables
locNameTabLong = LocationDatabaseTable(:,locNameVars);

% Build Matching Variable Table
LocVarsTab = array2table([...
"Location_m_NameMSA",	        "Location_MSAId"
"Location_mr_NameMetroRural",	"Location_mr_NumberMetroRural"
"Location_Fed_NameFedBranch",	"Location_Fed_NumberFedBranch"
"Location_s_NameState",	        "Location_s_NumberState"
"Location_r_NameRegion"	,       "Location_r_NumberRegion"
"Location_n_NameNational",	    "Location_n_NumberNational"],...
'VariableNames',{'LocNameVar','LocIDVar'});

% Get Corresponding Name Variables
idx_locVars = ismember(LocVarsTab.LocNameVar,locNameVars);
locIDVars = LocVarsTab.LocIDVar(idx_locVars);

% Add ID Variables to Geographies Table
LocIDVarsTabLong = LocationDatabaseTable(:,locIDVars);
LocTableLong = [locNameTabLong,LocIDVarsTabLong];

% Create the Geographies variable and tables
TFullwZips = [LocationDatabaseTable(:,{'zip_numeric'}), LocTableLong];
TFullwZips.Geographies = TFullwZips{:,locIDVars};

TFull = unique(LocTableLong,'rows');
TFull.Geographies = TFull{:,locIDVars};
T = TFull(:,locNameVars);



end