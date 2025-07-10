function [DimWeightsTab,vn] = mkemptyDimWeightsTab()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


variables ={...
'CollateralGroups',	        'double'
'Geographies',	            'double'
'LoanSize',	                'double'
'TermCategories',	        'double'
'RiskCategories',	        'double'
'Lag',	                    'double'
'FacilityType',	            'double'
'IndustryGroups',	        'double'};

vn = variables(:,1);
rown = {'Raw','Scaled'};
mat = zeros(length(rown),length(variables));
DimWeightsTab = array2table(mat,'VariableNames',vn,'RowNames',rown);


end