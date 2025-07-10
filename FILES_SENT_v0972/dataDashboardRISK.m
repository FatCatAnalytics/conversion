function [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardRISK(D)
% dataDashboardSPREADS
%
% Returns inputs to create dashboard for SWAP RATE analysis (data checking)
%
%
%
%


varname = 'B_Risk_Rating';

% Create Dashboard
% Title
DASHBOARDTITLE = "Risk Rating (PD)";
DASHBOARDsubTITLE = string(sprintf(['Analysis of Risk Ratings.']));

% Top Left Chart
LEFTCHARTTITLE = "";
LEFTCHART = struct();
LEFTCHART.ChartType = 'Histogram';
LEFTCHART.X = D.(varname);
LEFTCHART.xlab = "Risk Rating";
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