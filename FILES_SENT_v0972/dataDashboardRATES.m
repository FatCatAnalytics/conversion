function [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardRATES(D)
% dataDashboardSPREADS
%
% Returns inputs to create dashboard for RATES analysis (data checking)
%
%
%
%


varname = 'RATETYPE';
zerocount = sum(ismissing(D.(varname)));
format_zerocount = num2str(zerocount);
format_zerocountPct = strcat(num2str(round(100*zerocount./size(D,1),2)),"%");


% Create Dashboard
% Title
DASHBOARDTITLE = "RATE TYPE";
DASHBOARDsubTITLE = string(sprintf('Analysis of interest rate type.'));

% Top Left Chart
LEFTCHARTTITLE = "Histogram of Rate Type";
LEFTCHART = struct();
LEFTCHART.ChartType = 'Histogram';
LEFTCHART.X = D.(varname);
LEFTCHART.xlab = "Rate Type";
LEFTCHART.ylab = "Count of Observations";
LEFTCHART.ax = 'UIAxes_ChartLeft';

% Top Right Chart
RIGHTCHARTTITLE = "";
RIGHTCHART = [];

% Bottom Right Chart
BOTTOMRIGHTCHARTTITLE = "";
BOTTOMRIGHTCHART = [];

% Left Data Panel
NOTESLEFTTITLE = "Key Distribution Data.";
NOTESLEFTDATA = struct();
NOTESLEFTDATA.titles.title1 = sprintf('Number of Missing (0) Interest Rate Type');
NOTESLEFTDATA.data.data1 = format_zerocount;

NOTESLEFTDATA.titles.title2 = sprintf('Percentage of Missing (0) Interest Rate Type');
NOTESLEFTDATA.data.data2 = format_zerocountPct;


end