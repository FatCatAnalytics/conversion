function [returnedText] = getTextFromUser(varargin)
% UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


% The second (optional) argument is the text to include as a
% user prompt.
if nargin > 0
    user_prompt = varargin{1};
else
    user_prompt = "Enter text as required.";
end

% Open the user input app using the user promt
Fig = User_Input_01(user_prompt);

waitfor(Fig,'STATUS','COMPLETE')


try
    returnedText = Fig.USERINPUTUIFigure.UserData;
catch
    msg = sprintf('Error returning user data.');
    warning(msg)
end

% Close the app
try
    delete(Fig)
catch
    msg = sprintf('Error closing the user interface app.');
    warning(msg);
end


end