function [T] = indTree2indTab(tree)
% function converst the tree object (from the app) into an industry tree to
% be stored in the CLAGrid class object

% Initialize
T = table();

% Get the industry groups
indGroups = tree.Children;
nindGroups = size(indGroups,1);

% Loop through the industry groups
for c = 1:nindGroups

    % Get the Industry Group
    grp = indGroups(c);

    % Create the table row
    wid = 'MATLAB:table:RowsAddedExistingVars';
    warning('off',wid)
    T{c,{'IndGrpID'}} = c;
    T{c,{'IndGrpName'}} = grp.Text;
    warning('on','all')

    % Get the industries within the group
    industries = grp.Children;
    nindustries = size(industries,1);

    % identify the individual industries. we get the 2-digit NAICS and
    % store them in a vector in the table
    NAICS2s = [];
    NAICSIndustries = categorical();
    for i = 1:nindustries
        
        % Create the table Row
        ind = industries(i);
        indtext = strsplit(ind.Text,"_");
        indname = indtext{1};
        NAICS2 = str2double(indtext{2});
        NAICS2s = [NAICS2s,NAICS2];
        NAICSIndustries = [NAICSIndustries;categorical(string(indname))];
        
    end

    % Add the list of NAICS2 IDs to the table
    T{c,{'NAICS2s'}} = {NAICS2s};
    T{c,{'NAICSIndustries'}} = {NAICSIndustries};

end






end