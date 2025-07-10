function mkSettingsStruct(varargin)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% Initialize
settings = struct();

% Get optional Parameters
% Get any optional arguments and set properties accordingly
% Set the input parser
p = inputParser;

% DATAFilePath
def = pwd;
defmsg = sprintf(['Problem with the filepath input. the ' ...
    'DATAFilePath input must be a string or char']);
addParameter(p,'DATAFilePath',def,...
    @(x)...
    assert(or(isstring(x),ischar(x)),...
    defmsg)...
    );

% Parse and set results
parse(p,varargin{:});
settings.DATAFilePath = p.Results.DATAFilePath;

% Set Username
settings.Username = getenv('USERNAME');

% Set Created on Date
settings.CreatedOn = datetime('now');

% Write the file
fprintf('saving..')
save("SETTINGS.mat","settings");
fprintf('saved.\n')

end