function [NOTESLEFTTITLE,NOTESLEFTDATA,LEFTCHART,LEFTCHARTTITLE,RIGHTCHART,RIGHTCHARTTITLE,...
BOTTOMRIGHTCHART,BOTTOMRIGHTCHARTTITLE,DASHBOARDTITLE,DASHBOARDsubTITLE] = dataDashboardLOANSIZE(D)
% dataDashboardLOANSIZE
%
% Returns inputs to create dashboard for loan size analysis (data checking)
%
%
%
%


varname = 'F_Commitment_Amount';
vnclean = strrep(varname,"_"," ");
maxLoanSize = max((D.(varname)));
maxLoanSizeFormatted = regexprep(num2str(maxLoanSize),'\d{1,3}(?=(\d{3})+\>)','$&,');
minLoanSize = min((D.(varname)));
minLoanSizeFormatted = regexprep(num2str(minLoanSize),'\d{1,3}(?=(\d{3})+\>)','$&,');
[r,q] = iqr(D.(varname));
format_25th = regexprep(num2str(round(q(1),0)),'\d{1,3}(?=(\d{3})+\>)','$&,');
format_75th = regexprep(num2str(round(q(2),0)),'\d{1,3}(?=(\d{3})+\>)','$&,');
zerocount = sum(D.(varname)==0);
format_zerocount = regexprep(num2str(zerocount),'\d{1,3}(?=(\d{3})+\>)','$&,');
lessThan1000count = sum(D.(varname)<1000);
format_lessThan1000 = regexprep(num2str(lessThan1000count),'\d{1,3}(?=(\d{3})+\>)','$&,');
moreThan100MMcount = sum(D.(varname)>100000000);
format_moreThan100MM = regexprep(num2str(moreThan100MMcount),'\d{1,3}(?=(\d{3})+\>)','$&,');


% Create Dashboard
% Title
DASHBOARDTITLE = "Loan Size (Commitment Size)";
DASHBOARDsubTITLE = string(sprintf('Analysis of loan size data.'));

% Top Left Chart
LEFTCHARTTITLE = "Histogram of Commitment Amounts";
LEFTCHART = struct();
LEFTCHART.ChartType = 'Histogram';
LEFTCHART.X = D.F_Commitment_Amount;
LEFTCHART.xlab = "Commitment Amount";
LEFTCHART.ylab = "Count of Observations";
LEFTCHART.ax = 'UIAxes_ChartLeft';


% Top Right Chart
RIGHTCHARTTITLE = "Histogram of Largest 10% of Commitment Amounts";
RIGHTCHART = struct();
RIGHTCHART.ChartType = 'Histogram';
rightx = maxk(D.F_Commitment_Amount, floor(0.1 .* size(D,1)));
RIGHTCHART.X = rightx;
RIGHTCHART.xlab = "Commitment Amount";
RIGHTCHART.ylab = "Count of Observations";
RIGHTCHART.ax = 'UIAxes_ChartRight';

% Bottom Right Chart
BOTTOMRIGHTCHARTTITLE = "Box & Whisker Chart of Commitment Amounts";
BOTTOMRIGHTCHART = struct();
BOTTOMRIGHTCHART.ChartType = 'Box';
BOTTOMRIGHTCHART.GrpData = D.L_pricing_structure;
BOTTOMRIGHTCHART.X = D.F_Commitment_Amount;
BOTTOMRIGHTCHART.xlab = "Pricing Structure";
BOTTOMRIGHTCHART.ylab = "Loan Size";
BOTTOMRIGHTCHART.ax = 'UIAxes_ChartBottomRight';


% Left Data Panel
NOTESLEFTTITLE = "Key Distribution Data.";
NOTESLEFTDATA = struct();
NOTESLEFTDATA.titles.title1 = sprintf('Maximum Loan Size');
NOTESLEFTDATA.data.data1 = maxLoanSizeFormatted;

NOTESLEFTDATA.titles.title2 = sprintf('Minimum Loan Size');
NOTESLEFTDATA.data.data2 = minLoanSizeFormatted;

NOTESLEFTDATA.titles.title3 = sprintf('25th Percentile');
NOTESLEFTDATA.data.data3 = format_25th;

NOTESLEFTDATA.titles.title4 = sprintf('75th Percentile');
NOTESLEFTDATA.data.data4 = format_75th;

NOTESLEFTDATA.titles.title5 = sprintf('Number of observations with $0 commitment amount');
NOTESLEFTDATA.data.data5 = format_zerocount;

NOTESLEFTDATA.titles.title6 = sprintf('Number of observations with commitment less than $1,000');
NOTESLEFTDATA.data.data6 = format_lessThan1000;

NOTESLEFTDATA.titles.title7 = sprintf('Number of obs. with commitment greater than $100MM');           
NOTESLEFTDATA.data.data7 = format_moreThan100MM;








end