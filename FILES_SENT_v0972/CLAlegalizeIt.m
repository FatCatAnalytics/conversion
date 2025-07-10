function [outputText] = CLAlegalizeIt(inputText)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

% Convert to char to make it easier to work with
inputTextChar = char(inputText);

% Remove any numbers up front
firstCharNum = true;
while firstCharNum

    firstChar = inputTextChar(1);
    firstCharNum = isstrprop(firstChar,"digit");

    if firstCharNum
        inputTextChar = inputTextChar(2:end);
    end
end



% Remove illegal characters
idx_keep = isstrprop(inputTextChar,"alphanum");
textchar = inputText(idx_keep);

% Remove other illegals
otherillegals = '.';
idx_remove = ismember(textchar,otherillegals);
textchar = textchar(~idx_remove);


% Convert to string and return
outputText = string(textchar);





end