function [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardLOCATION(D)
% dataDashboardSPREADS
%
% Returns inputs to create dashboard for SPREAD analysis (data checking)
%
%
%
%


varname = 'STATE';
zerocount = sum(D.(varname)==0);
format_zerocount = num2str(zerocount);


% Create Dashboard
% Title
DASHBOARDTITLE = "Geographic Location (State)";
DASHBOARDsubTITLE = string(sprintf('Analysis of locaiton (state) based on numerical zip code.'));

% Top Left Chart
LEFTCHARTTITLE = "Histogram of States";
LEFTCHART = struct();
LEFTCHART.ChartType = 'Histogram';
LEFTCHART.X = D.(varname);
LEFTCHART.xlab = "U.S. State (by Number)";
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