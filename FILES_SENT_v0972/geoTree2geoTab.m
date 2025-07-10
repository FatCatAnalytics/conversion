function [LOCATIONS] = geoTree2geoTab(tree,TAXONOMYTABS)
%
% geoTree2geoTab function creates table from tree (tree created in the app
% by the user).
%

% Ignoring Geography
% There are some clients who will want to ignore geography,
% for this purpose, the user will either select no geographies, 
% or will only select US in the grid builder in the app.  In
% these cases, the GRID.Geographies table will be empty when
% constructed by the geoTree2geoTab function, or will have a single checked
% node ('U.S.')
if isscalar(tree.CheckedNodes)
    if strcmpi(tree.CheckedNodes.Text,"U.S.")
        outtabVn = {'Location_n_NameNational','Location_n_NumberNational','Geographies'};
        LOCATIONS = cell2table({categorical("National"),1,1},'VariableNames',outtabVn);
        return
    end
end

% Build the text file holding the text description of each geographic area
CHKD = tree.CheckedNodes;
TXT = [];
nchked = size(CHKD,1);
for n = 1:nchked
    txt = string(CHKD(n).UserData);
    TXT = [TXT;txt];
end

% Split the TXT strings into the Different Geographical Parts
geostrcell = arrayfun(@(x) strsplit(x,"_"),TXT,'UniformOutput',false);

% We only keep the geographies that have the full list of geographical
% features.
nums = cell2mat(arrayfun(@(x) size(x{:},2),geostrcell,'UniformOutput',false));
idx_keepnums = nums==max(nums);
geostrcell_keep = geostrcell(idx_keepnums);
LOCATIONS = strings(size(geostrcell_keep,1),max(nums));
for g = 1:size(geostrcell_keep,1)

    gc = geostrcell_keep{g};
    LOCATIONS(g,:) = gc;

end
LOCATIONS = array2table(categorical(LOCATIONS));

% Create Full Geography Tables
[T,~,~,LocVarsTab] = defGeographyTable(TAXONOMYTABS.LocationDatabase,...
    'LocNameVars',{'Location_r_NameRegion','Location_Fed_NameFedBranch','Location_s_NameState','Location_mr_NameMetroRural','Location_m_NameMSA'});


% Find the geographic definitions and establish the varaible names for the
% LOCATIONS table
remainingvariables = size(LOCATIONS,2);
v = 1;
while remainingvariables >0
    
    % Make sure we have a categorical variable
    vclass = class(LOCATIONS{:,v});

    % If there is no data in the variable, remove it
    if strcmpi(vclass,'categorical')
        if all(ismissing(LOCATIONS{:,v}))
            LOCATIONS(:,v) = [];
            remainingvariables = remainingvariables-1;
        end
    end

    % Find out which type of geographical variable it is
    for Tv = 1:size(T,2)
        if(all(ismember(LOCATIONS{:,v},T{:,Tv})))
            LOCATIONS.Properties.VariableNames{v} = T.Properties.VariableNames{Tv};
        end
    end

    remainingvariables = remainingvariables -1;
    v = v+1;
end

% Create the Geographies Field (the numerical IDs for each of the
% Geographical Componants)
geographies = NaN(size(LOCATIONS));
for c = 1:size(LOCATIONS,2)

    cn = LOCATIONS.Properties.VariableNames{c};
    idvarn = char(LocVarsTab.LocIDVar(strcmpi(LocVarsTab.LocNameVar,cn)));
    [~,locb_geocomponent] = ismember(LOCATIONS.(cn),TAXONOMYTABS.LocationDatabase.(cn));
    LOCATIONS.(idvarn) = TAXONOMYTABS.LocationDatabase.(idvarn)(locb_geocomponent);
    geographies(:,c) = TAXONOMYTABS.LocationDatabase.(idvarn)(locb_geocomponent);

end
LOCATIONS.Geographies = geographies;





end