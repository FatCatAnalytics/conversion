function [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardSWAPRATES_LIBOR(D)
% dataDashboardSPREADS
%
% Returns inputs to create dashboard for SWAP RATE analysis (data checking)
%
%
%
%


varname = 'SwapRate_LIBOR';
vnclean = strrep(varname,"_"," ");
maxOBSERVED = max((D.(varname)));
maxOBSERVEDFormatted = num2str(maxOBSERVED);
minOBSERVED = min((D.(varname)));
minOBSERVEDFormatted = num2str(minOBSERVED);
[r,q] = iqr(D.(varname));
format_25th = num2str(round(q(1),4));
format_75th = num2str(round(q(2),4));
zerocount = sum(D.(varname)==0);
format_zerocount = num2str(zerocount);
lessThan0count = sum(D.(varname)<0);
format_lessThan0 = num2str(lessThan0count);
moreThan10count = sum(D.(varname)>10);
format_moreThan10 = num2str(moreThan10count);


% Create Dashboard
% Title
DASHBOARDTITLE = "SWAP RATES";
DASHBOARDsubTITLE = string(sprintf('Analysis of Swap Rate data on Fixed Rate Loans only.'));

% Top Left Chart
LEFTCHARTTITLE = "Histogram of Fixed Interest Rates";
LEFTCHART = struct();
LEFTCHART.ChartType = 'Histogram';
LEFTCHART.X = D.(varname);
LEFTCHART.xlab = "Swap Rates";
LEFTCHART.ylab = "Count of Observations";
LEFTCHART.ax = 'UIAxes_ChartLeft';


% Top Right Chart
RIGHTCHARTTITLE = "Histogram of Largest 10% of Rates";
RIGHTCHART = struct();
RIGHTCHART.ChartType = 'Histogram';
rightx = maxk(D.(varname), floor(0.1 .* size(D,1)));
RIGHTCHART.X = rightx;
RIGHTCHART.xlab = "Swap Rates";
RIGHTCHART.ylab = "Count of Observations";
RIGHTCHART.ax = 'UIAxes_ChartRight';

% Bottom Right Chart
BOTTOMRIGHTCHARTTITLE = "Box & Whisker Chart of Rates";
BOTTOMRIGHTCHART = struct();
BOTTOMRIGHTCHART.ChartType = 'Box';
BOTTOMRIGHTCHART.GrpData = D.F_file_date;
BOTTOMRIGHTCHART.X = D.(varname);
BOTTOMRIGHTCHART.xlab = "File Date";
BOTTOMRIGHTCHART.ylab = "Swap Rate";
BOTTOMRIGHTCHART.ax = 'UIAxes_ChartBottomRight';


% Left Data Panel
NOTESLEFTTITLE = "Key Distribution Data.";
NOTESLEFTDATA = struct();
NOTESLEFTDATA.titles.title1 = sprintf('Maximum Swap Rate');
NOTESLEFTDATA.data.data1 = maxOBSERVEDFormatted;

NOTESLEFTDATA.titles.title2 = sprintf('Minimum Swap Rate');
NOTESLEFTDATA.data.data2 = minOBSERVEDFormatted;

NOTESLEFTDATA.titles.title3 = sprintf('25th Percentile');
NOTESLEFTDATA.data.data3 = format_25th;

NOTESLEFTDATA.titles.title4 = sprintf('75th Percentile');
NOTESLEFTDATA.data.data4 = format_75th;

NOTESLEFTDATA.titles.title5 = sprintf('Number of observations with 0 Swap Rate');
NOTESLEFTDATA.data.data5 = format_zerocount;

NOTESLEFTDATA.titles.title6 = sprintf('Number of observations with Swap Rate less than 0');
NOTESLEFTDATA.data.data6 = format_lessThan0;

NOTESLEFTDATA.titles.title7 = sprintf('Number of obs. with Swap Rate greater than 10pct');           
NOTESLEFTDATA.data.data7 = format_moreThan10;








end