function [IndustryGroup,IndustryTabFull] = defIndustryTab()
    % -------------------------------------------------------------
    %
    % defIndustryTab 
    %  set the default Industry Table property
    %
    %
    %
    %
    % -------------------------------------------------------------
    NAICSTable = NAICStaxonomy();
    
    
    NAICS2 = [11,21,22,53,54,62,71,92,31,32,33,44,45,23,42,48,49,51,52,55,56,61,72,81]';
    GA_Group = [1,2,3,15,16,20,22,24,25,25,25,26,26,77,77,77,77,77,77,77,77,77,77,77]';

    GA_Group = [1,1,1,1,1,1,1,1,1,1,1,1,1,77,77,77,77,77,77,77,77,77,77,77]';

    ga_groups = unique(GA_Group);
    GAIndustryGroup = categorical(strcat("IND_",string(GA_Group)));
    NAICS_descrip = NAICSTable.NAICSCategory;
    IndustryTab = [array2table(NAICS2),array2table(GA_Group),array2table(GAIndustryGroup),array2table(NAICS_descrip)];
    
    % Build IND table
    IND = unique(IndustryTab(:,{'GA_Group','GAIndustryGroup'}));
    for n = 1:size(IND,1)



    end
    assignin("base","IND",IND)
    
    % Initialize
    sz = [length(unique(GA_Group)),4];
    vt = {'double','categorical','cell','cell'};
    vn = {'IndGrpID','IndGrpName','NAICSIndustries','NAICS2s'};
    IndustryGroup = table('Size',sz,'VariableTypes',vt,'VariableNames',vn);
    
    % Create the default industry group table (for taxonomy tabs)
    for g = 1:length(ga_groups)
    
        grp = ga_groups(g);
        idx_grp = IndustryTab.GA_Group == grp;
        NAICS2s = IndustryTab.NAICS2(idx_grp);
        industries = IndustryTab.NAICS_descrip(idx_grp);
        
        
        IndustryGroup.IndGrpID(g) = g;
        IndustryGroup.IndGrpName(g) = IndustryTab.GAIndustryGroup(g);
        IndustryGroup.NAICSIndustries{g} = industries;
        IndustryGroup.NAICS2s{g} = NAICS2s;

    end
    IndustryGroup.IndGrpName = categorical(strcat("GA_IndustryGrp_",num2str(IndustryGroup.IndGrpID)));

    % Create the full Industry table (for information and for the Grid
    % Builder)

    AllNAICS2s = [];
    AllNAICS2_Names = [];
    for i = 1:size(IndustryGroup,1)

        ID = IndustryGroup.IndGrpID(i);
        NAICS2s = IndustryGroup.NAICS2s{i,:};
        AllNAICS2s = [AllNAICS2s;NAICS2s];

        NAICS2Names = IndustryGroup.NAICSIndustries{i,:};
        AllNAICS2_Names = [AllNAICS2_Names; NAICS2Names];

    end

    IndustryTabFull = [array2table(AllNAICS2s,'VariableNames',{'NAICS2'}),...
        array2table(AllNAICS2_Names,'VariableNames',{'Industry'})];
    IndustryTabFull.IndustryNAICS2 = categorical(strcat(...
        string(IndustryTabFull.Industry),"_",num2str(IndustryTabFull.NAICS2)));
end