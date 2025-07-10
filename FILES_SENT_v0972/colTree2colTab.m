function [T] = colTree2colTab(tree)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here



colGroups = tree.Children;
ncolGroups = size(colGroups,1);

T = table();


for g = 1:ncolGroups


    colgroup = colGroups(g);

    % Create the table row
    wid = 'MATLAB:table:RowsAddedExistingVars';
    warning('off',wid)
    T{g,{'SecGID'}} = g;
    T{g,{'SecurityGroup'}} = categorical(string(colgroup.Text));
    warning('on','all')



    coltypes = colgroup.Children;
    ncoltypes = size(coltypes,1);

    SecurityCategoryIDs = [];
    SecurityCategories = categorical();

    for t = 1:ncoltypes
        
        coltype = coltypes(t).Text;
        coltypeTextparts = strsplit(coltype,"_");
        coltypen = coltypeTextparts{1};
        coltypenum = str2double(coltypeTextparts{2});
        SecurityCategoryIDs = [SecurityCategoryIDs,coltypenum];
        SecurityCategories = [SecurityCategories;categorical(string(coltypen))];

    end

    T{g,{'SecurityCategoryIDs'}} = {SecurityCategoryIDs};
    T{g,{'SecurityTypes'}} = {SecurityCategories};

end


end