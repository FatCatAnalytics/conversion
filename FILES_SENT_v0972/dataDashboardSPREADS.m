function [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardSPREADS(D)
% dataDashboardSPREADS
%
% Returns inputs to create dashboard for SPREAD analysis (data checking)
%
%
%
%


varname = 'UnswappedSPR';
vnclean = strrep(varname,"_"," ");
maxunswappedSPR = max((D.(varname)));
maxunswappedSPRFormatted = regexprep(num2str(maxunswappedSPR),'\d{1,3}(?=(\d{3})+\>)','$&,');
minunswappedSPR = min((D.(varname)));
minunswappedSPRFormatted = regexprep(num2str(minunswappedSPR),'\d{1,3}(?=(\d{3})+\>)','$&,');
[r,q] = iqr(D.(varname));
format_25th = regexprep(num2str(round(q(1),0)),'\d{1,3}(?=(\d{3})+\>)','$&,');
format_75th = regexprep(num2str(round(q(2),0)),'\d{1,3}(?=(\d{3})+\>)','$&,');
zerocount = sum(D.(varname)==0);
format_zerocount = regexprep(num2str(zerocount),'\d{1,3}(?=(\d{3})+\>)','$&,');
lessThan0count = sum(D.(varname)<0);
format_lessThan0 = regexprep(num2str(lessThan0count),'\d{1,3}(?=(\d{3})+\>)','$&,');
moreThan1000count = sum(D.(varname)>1000);
format_moreThan1000 = regexprep(num2str(moreThan1000count),'\d{1,3}(?=(\d{3})+\>)','$&,');


% Create Dashboard
% Title
DASHBOARDTITLE = "Spread (Unswapped)";
DASHBOARDsubTITLE = string(sprintf('Analysis of spread data on Floating Rate Loans only.'));

% Top Left Chart
LEFTCHARTTITLE = "Histogram of Spreads";
LEFTCHART = struct();
LEFTCHART.ChartType = 'Histogram';
LEFTCHART.X = D.(varname);
LEFTCHART.xlab = "Spreads";
LEFTCHART.ylab = "Count of Observations";
LEFTCHART.ax = 'UIAxes_ChartLeft';


% Top Right Chart
RIGHTCHARTTITLE = "Histogram of Largest 10% of Spreads";
RIGHTCHART = struct();
RIGHTCHART.ChartType = 'Histogram';
rightx = maxk(D.(varname), floor(0.1 .* size(D,1)));
RIGHTCHART.X = rightx;
RIGHTCHART.xlab = "Spread";
RIGHTCHART.ylab = "Count of Observations";
RIGHTCHART.ax = 'UIAxes_ChartRight';

% Bottom Right Chart
BOTTOMRIGHTCHARTTITLE = "Box & Whisker Chart of Spreads";
BOTTOMRIGHTCHART = struct();
BOTTOMRIGHTCHART.ChartType = 'Box';
BOTTOMRIGHTCHART.GrpData = D.L_pricing_structure;
BOTTOMRIGHTCHART.X = D.(varname);
BOTTOMRIGHTCHART.xlab = "Pricing Structure";
BOTTOMRIGHTCHART.ylab = "Spread";
BOTTOMRIGHTCHART.ax = 'UIAxes_ChartBottomRight';


% Left Data Panel
NOTESLEFTTITLE = "Key Distribution Data.";
NOTESLEFTDATA = struct();
NOTESLEFTDATA.titles.title1 = sprintf('Maximum Spread');
NOTESLEFTDATA.data.data1 = maxunswappedSPRFormatted;

NOTESLEFTDATA.titles.title2 = sprintf('Minimum Spread');
NOTESLEFTDATA.data.data2 = minunswappedSPRFormatted;

NOTESLEFTDATA.titles.title3 = sprintf('25th Percentile');
NOTESLEFTDATA.data.data3 = format_25th;

NOTESLEFTDATA.titles.title4 = sprintf('75th Percentile');
NOTESLEFTDATA.data.data4 = format_75th;

NOTESLEFTDATA.titles.title5 = sprintf('Number of observations with 0 Spread');
NOTESLEFTDATA.data.data5 = format_zerocount;

NOTESLEFTDATA.titles.title6 = sprintf('Number of observations with Spread less than 0');
NOTESLEFTDATA.data.data6 = format_lessThan0;

NOTESLEFTDATA.titles.title7 = sprintf('Number of obs. with Spread greater than 1000bps');           
NOTESLEFTDATA.data.data7 = format_moreThan1000;








end