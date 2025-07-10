%% Document

clear
clc
close all

%% Get files in directory
mydir = dir();

%% Publish Each of the functions and class objects
for m = 1:size(mydir,1)

    filen = mydir(m).name;
    filnsplit = strsplit(filen,".");
    fileext = filnsplit{end};
    if(fileext=='m')
        publish(filen,'evalCode',false);
    end

end
