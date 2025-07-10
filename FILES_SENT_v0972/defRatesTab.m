function [defRatesTab] = defRatesTab(varargin)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


% Get any optional arguments and set properties accordingly
% Set the input parser
p = inputParser;

% Get USE Variable (which may be input by the user)
defUSE = logical([0 0 0 1]');
defmsg = sprintf(['Problem with the USE input. the ' ...
    'description must be a logical vector']);
addParameter(p,'USE',defUSE,...
    @(x)...
    assert(islogical(x),...
    defmsg)...
    );

parse(p,varargin{:});
USE_input = p.Results.USE;

% If the input value of USE is not a column, transpose it
if size(USE_input,1)>size(USE_input,2)
    USE = USE_input;
else
    USE = USE_input';
end


% Set variables includind default
Index = {'Fixed', 'Libor','Prime','SOFR'}';

defRatesTab = [...
    array2table(Index,'VariableNames', {'Index'}),...
    array2table(USE,'VariableNames', {'USE'}),...
    array2table([{[0]},{[1;2;3;4;5;6;7;8;9]},{[10;11;12;13;14]},{[103;104;105;106;107;108;109]}]','VariableNames',{'IndexIDs'}),...
    array2table([1,2,2,2]','VariableNames',{'PricingStructureIDs'})];





end