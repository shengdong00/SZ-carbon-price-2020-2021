%分析no-lag-clean
% df = xlsread('data.xlsx','no-lag-clean');
df = xlsread('data.xlsx','lag-1d-clean');

P = df(:,1); %收盘价
Q = df(:,2); %成交量
DAX = df(:,3); %法兰克福DAX30指数
HS = df(:,4); %沪深300指数
IO = df(:,5); %WTI国际原油期货
DO = df(:,6); %国内汽油价格
EP = df(:,7); %ETS-EUA价格
lnQ = log(Q); %成交量取对数

% 分析价格影响因素
X = [DAX, HS, IO, DO, EP, Q];
Y = P;
stepwise(X,Y);