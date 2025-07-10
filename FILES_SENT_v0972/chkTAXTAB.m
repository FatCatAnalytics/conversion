function [TAXTABSOK] = chkTAXTAB(S)
% chkTAXTAB
%
% checks that the structure provided (S) is in fact an acceptable
% TAXONOMYTABS structure
% 
% Returns true (if it's ok) or false (if not)
%

% Initialize as False
TAXTABSOK = false;

% Build CHK Table Holding the Field Names and the Object Classes
CHK = rows2vars(...
   varfun(@(x) string(x),...
   struct2table(structfun(@(x) class(x),S,'UniformOutput',false))...
   )...
   );

% If there was nothing in the DATA.mat file, we throw an error
if isempty(CHK)
    msg = sprintf('The structure was empty.\n');
    return
end
CHK.Properties.VariableNames = {'TableName','ObjectClass'};
CHK.TableName = strrep(CHK.TableName,"Fun_","");

% Check we have all the necessary fieldnames and that they are each a table
% if anything is wrong (i.e., missing a field name or a field name is not a
% table), we stop and return, the output of the function will be false (the
% initial value set above).
necessaryFNs = {
'accrual_status'
'amortization_type'
'Collateral_Type'
'cre_constructiontype'
'cre_occupancytype'
'cre_propertytype'
'Index'
'Loan_LGD'
'Line_of_Business'
'Loan_Type'
'Loan_Origination_Status'
'pricing_structure'
'Risk_Rating'
'SBA_Loan_Product_Type'
'Facility_Syndication_Status'
'LocationDatabase'};

for n = 1:length(necessaryFNs)
    
    fn = char(necessaryFNs{n});
    hasField = ismember(fn,fieldnames(S));

    if hasField
        istable = isa(S.(fn),"table");
    else
        istable = false;
    end
    
    if ~all([hasField,istable])
        return
    end

end

% If we go through each of the fields and are ok, then it looks like we
% have a TAXONOMYTABS structure, and we're ok.
TAXTABSOK = true;


end