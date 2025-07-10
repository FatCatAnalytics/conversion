function [NAICSTable] = NAICStaxonomy()
    %
    % Function creates an NAICS taxonomy table
    % Should only be used until the final data format is available from GA,
    % according to GA, the final data format will have full 6-digit NAICS.
    %
    % -----------------------------------------------------------------
    
    
    
    NAICS_2Digit = [
    11;	21;	
    22;	23;	
    31; 32;
    33;	42;	
    44; 45;
    48; 49;	
    51;	52;	
    53;	54;	
    55;	56;	
    61;	62;	
    71;	72;	
    81;	92];
    
    NAICS_Cats = categorical([...
    "Agriculture, Forestry, Fishing and Hunting"
    "Mining, Quarrying, and Oil and Gas Extraction"
    "Utilities"
    "Construction"
    "Manufacturing"
    "Manufacturing"
    "Manufacturing"
    "Wholesale Trade"
    "Retail Trade"
    "Retail Trade"
    "Transportation and Warehousing"
    "Transportation and Warehousing"
    "Information"
    "Finance and Insurance"
    "Real Estate and Rental and Leasing"
    "Professional, Scientific, and Technical Services"
    "Management of Companies and Enterprises"
    "Administrative and Support and Waste Management and Remediation Services"
    "Educational Services"
    "Health Care and Social Assistance"
    "Arts, Entertainment, and Recreation"
    "Accommodation and Food Services"
    "Other Services (except Public Administration)"
    "Public Administration"]);
    
    NAICSTable = [...
        array2table(NAICS_2Digit,"VariableNames","NAICS2"),...
        array2table(NAICS_Cats,"VariableNames","NAICSCategory")];
    
    
    
end
