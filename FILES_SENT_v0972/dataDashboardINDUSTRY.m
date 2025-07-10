function [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardINDUSTRY(D)
% dataDashboardSPREADS
%
% Returns inputs to create dashboard for SWAP RATE analysis (data checking)
%
%
%
%


varname = 'NAICS2';

% Create Dashboard
% Title
DASHBOARDTITLE = "Industry";
DASHBOARDsubTITLE = string(sprintf(['Analysis of Industry (NAICS 2-Digit).']));

% Top Left Chart
LEFTCHARTTITLE = "";
LEFTCHART = struct();
LEFTCHART.ChartType = 'Histogram';
LEFTCHART.X = D.(varname);
LEFTCHART.xlab = "Industry";
LEFTCHART.ylab = "Count of Observations";
LEFTCHART.ax = 'UIAxes_ChartLeft';


% Top Right Chart
RIGHTCHARTTITLE = "";
RIGHTCHART = [];

% Bottom Right Chart
BOTTOMRIGHTCHARTTITLE = "";
BOTTOMRIGHTCHART = [];


% Left Data Panel
NOTESLEFTTITLE = "";
NOTESLEFTDATA = [];







end