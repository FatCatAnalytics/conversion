function [dimensions] = defDimensionsStruct(varargin)
% 
% defDimensionsStruct
%
%
%
%
%
%
% -------------------------------------------------------------------------

% If the user has passed a populated_grid table to populate, we use the
% variables in that table (when available) as dimensions
if ~isempty(varargin)
    useInput = true;
    T = varargin{1};
    varNames = T.Properties.VariableNames;
else
    useInput = false;
end

% Initialize
dimensions = struct();

% There is only one option for 'Lag' dimension
dimensions.Lag.gridvar = 'Lag';
dimensions.Lag.distvar = 'Lag';

% There is only one option for 'FacilityType' dimension
dimensions.FacilityType.gridvar = 'FacilityType';
dimensions.FacilityType.distvar = 'FacilityType';


% If the user provided a table, use the Loan Size option that is used in
% the table provided
dimensions.LoanSize.gridvar = 'LoanSizeGroup';
if useInput
    LoanSizeVars = {'LoanSizeGroup','LoanSize'};
    idx_LoanSizeVar = ismember(varNames,LoanSizeVars);
    if sum(idx_LoanSizeVar)>1
        warningmsg = sprintf(['More than one possible "Loan Size" variable in the ' ...
            'input table. The dimensions structure will use the default variable.\n']);
        warning(warningmsg)
    elseif sum(idx_LoanSizeVar) == 0
        errormsg = sprintf(['The input table does not include a "Loan Size" variable. ' ...
            'The dimensions structure will not be created.\n']);    
        error(errormsg)
    elseif sum(idx_LoanSizeVar) == 1
        dimensions.LoanSize.distvar = varNames{idx_LoanSizeVar};
    end
else
    dimensions.LoanSize.distvar = 'LoanSize';
end


% There is only one option for 'RiskCategories' dimension
dimensions.RiskCategories.gridvar = 'RiskCategories';
dimensions.RiskCategories.distvar = 'RiskCategories';


% If the user provided a table, use the Term Categories Size option that is 
% used in the table provided
dimensions.TermCategories.gridvar = 'TermCategories';
if useInput
    TermVars = {'Term','TermMonths','TermCategories'};
    idx_TermVar = ismember(varNames,TermVars);
    if sum(idx_TermVar)>1
        warningmsg = sprintf(['More than one possible "Term" variable in the ' ...
            'input table. The dimensions structure will use the default variable.\n']);
        warning(warningmsg)
    elseif sum(idx_TermVar) == 0
        errormsg = sprintf(['The input table does not include a "Term" variable. ' ...
            'The dimensions structure will not be created.\n']);    
        error(errormsg)
    elseif sum(idx_TermVar) == 1
        dimensions.TermCategories.distvar = varNames{idx_TermVar};
    end
else
    dimensions.TermCategories.distvar = 'TermCategories';
end




% There is only one option for 'CollateralGroups' dimension
dimensions.CollateralGroups.gridvar = 'CollateralGroups';
dimensions.CollateralGroups.distvar = 'CollateralGroups';

% There is only one option for 'IndustryGroups' dimension
dimensions.IndustryGroups.gridvar = 'IndustryGroups';
dimensions.IndustryGroups.distvar = 'IndustryGroups';

% There is only one option for 'Geographies' dimension
dimensions.Geographies.gridvar = 'Geographies';
dimensions.Geographies.distvar = 'Geographies';




end