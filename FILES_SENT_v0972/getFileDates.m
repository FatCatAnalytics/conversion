function [outputArg1,outputArg2] = getFileDates(inputArg1,inputArg2,varargin)
% getFileDates
% 
% Function receives a number of (at least 2) CLAdataTable class data
% objects and returns:
% - 
%
%

% Find out how many input files there are.
inputDataTables = {inputArg1,inputArg2,varargin{:,:}};
nInputs = numel(inputDataTables);

% Check that all input files are CLAdataTable class objects and have
% 'file_date' as a variable
T = array2table(false([nInputs,2]),'VariableNames',{'ClassOK','HasFileDate'});
T.InputName = strings(nInputs,1);
T = movevars(T, "InputName", "Before",1);
T.file_dates = cell(nInputs,1);


for c = 1:nInputs

    dt = inputDataTables{c};
    T.ClassOK(c) = strcmpi(class(dt),'CLAdataTable');

    % If we have the correct class object, get the other information
    if T.ClassOK(c)
        T.HasFileDate(c) = ismember({'file_date'},dt.VariableNames);
        T.InputName(c) = inputname(c);

        % If the input argument has a file date field, then get the file
        % dates and store them in the outgoing table.  If not, we will
        % return an error below.
        if T.HasFileDate(c)
            idx_filedate = strcmpi("file_date",string(dt.VariableNames));
            T.file_dates{c} = unique(dt.DataMat(:,idx_filedate));
        end
    end

end
dataOK = all(all(T{:,{'ClassOK','HasFileDate'}}));
if ~dataOK

    msg = sprintf(['Data inputs to GETFILEDATES are incorrect. Either one or ' ...
        'more data inputs are not CLAdataTable class objects, or one or more ' ...
        'data inputs do not have "file_date" as a variable name.']);
    error(msg)
end

% If we do not return an error, extract the file dates from the output
% table.
intersect_filedates = T.file_dates{1};
for n = 2:nInputs
    intersect_filedates = intersect(intersect_filedates,T.file_dates{n});
end

outputArg1 = intersect_filedates;
outputArg2 = T;
end