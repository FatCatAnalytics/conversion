function [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardFIXEDRATES(D)
% dataDashboardSPREADS
%
% Returns inputs to create dashboard for SPREAD analysis (data checking)
%
%
%
%


varname = 'L_interest_rate_percent';
vnclean = strrep(varname,"_"," ");
maxOBSERVED = max((D.(varname)));
maxOBSERVEDFormatted = regexprep(num2str(maxOBSERVED),'\d{1,3}(?=(\d{3})+\>)','$&,');
minOBSERVED = min((D.(varname)));
minOBSERVEDFormatted = regexprep(num2str(minOBSERVED),'\d{1,3}(?=(\d{3})+\>)','$&,');
[r,q] = iqr(D.(varname));
format_25th = num2str(round(q(1),4));
format_75th = num2str(round(q(2),4));
zerocount = sum(D.(varname)==0);
format_zerocount = num2str(zerocount);
lessThan4count = sum(D.(varname)<0.04);
format_lessThan4 = num2str(lessThan4count);
moreThan20count = sum(D.(varname)>0.20);
format_moreThan20 = num2str(moreThan20count);


% Create Dashboard
% Title
DASHBOARDTITLE = "Fixed Interest Rate";
DASHBOARDsubTITLE = string(sprintf('Analysis of rate data on Fixed Rate Loans only.'));

% Top Left Chart
LEFTCHARTTITLE = "Histogram of Fixed Interest Rates";
LEFTCHART = struct();
LEFTCHART.ChartType = 'Histogram';
LEFTCHART.X = D.(varname);
LEFTCHART.xlab = "Rates";
LEFTCHART.ylab = "Count of Observations";
LEFTCHART.ax = 'UIAxes_ChartLeft';


% Top Right Chart
RIGHTCHARTTITLE = "Histogram of Largest 10% of Rates";
RIGHTCHART = struct();
RIGHTCHART.ChartType = 'Histogram';
rightx = maxk(D.(varname), floor(0.1 .* size(D,1)));
RIGHTCHART.X = rightx;
RIGHTCHART.xlab = "Rates";
RIGHTCHART.ylab = "Count of Observations";
RIGHTCHART.ax = 'UIAxes_ChartRight';

% Bottom Right Chart
BOTTOMRIGHTCHARTTITLE = "Box & Whisker Chart of Rates";
BOTTOMRIGHTCHART = struct();
BOTTOMRIGHTCHART.ChartType = 'Box';
BOTTOMRIGHTCHART.GrpData = D.F_file_date;
BOTTOMRIGHTCHART.X = D.(varname);
BOTTOMRIGHTCHART.xlab = "Month";
BOTTOMRIGHTCHART.ylab = "Rate";
BOTTOMRIGHTCHART.ax = 'UIAxes_ChartBottomRight';


% Left Data Panel
NOTESLEFTTITLE = "Key Distribution Data.";
NOTESLEFTDATA = struct();
NOTESLEFTDATA.titles.title1 = sprintf('Maximum Fixed Rate');
NOTESLEFTDATA.data.data1 = maxOBSERVEDFormatted;

NOTESLEFTDATA.titles.title2 = sprintf('Minimum Fixed Rate');
NOTESLEFTDATA.data.data2 = minOBSERVEDFormatted;

NOTESLEFTDATA.titles.title3 = sprintf('25th Percentile');
NOTESLEFTDATA.data.data3 = format_25th;

NOTESLEFTDATA.titles.title4 = sprintf('75th Percentile');
NOTESLEFTDATA.data.data4 = format_75th;

NOTESLEFTDATA.titles.title5 = sprintf('Number of observations with 0 Fixed Rate');
NOTESLEFTDATA.data.data5 = format_zerocount;

NOTESLEFTDATA.titles.title6 = sprintf('Number of observations with Fixed Rate less than 4pct');
NOTESLEFTDATA.data.data6 = format_lessThan4;

NOTESLEFTDATA.titles.title7 = sprintf('Number of obs. with Fixed Rate greater than 20pct');           
NOTESLEFTDATA.data.data7 = format_moreThan20;








end