function [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardCOLLATERAL(D)
% dataDashboardSPREADS
%
% Returns inputs to create dashboard for SPREAD analysis (data checking)
%
%
%
%


varname = 'L_Collateral_Type';
zerocount = sum(D.(varname)==0);
format_zerocount = num2str(zerocount);
format_zerocountPct = strcat(num2str(round(100*zerocount./size(D,1),2)),"%");


% Create Dashboard
% Title
DASHBOARDTITLE = "COLLATERAL TYPE";
DASHBOARDsubTITLE = string(sprintf('Analysis of collateral type.'));

% Top Left Chart
LEFTCHARTTITLE = "Histogram of Collateral Type";
LEFTCHART = struct();
LEFTCHART.ChartType = 'Histogram';
LEFTCHART.X = D.(varname);
LEFTCHART.xlab = "Collateral Type";
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
NOTESLEFTDATA.titles.title1 = sprintf('Number of Missing (0) Collateral IDs');
NOTESLEFTDATA.data.data1 = format_zerocount;

NOTESLEFTDATA.titles.title2 = sprintf('Percentage of Missing (0) Collateral IDs');
NOTESLEFTDATA.data.data2 = format_zerocountPct;


end