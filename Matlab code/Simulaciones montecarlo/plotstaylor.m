%Series de Taylor
pdf10 = xlsread('Seriesdetaylor.xlsx','B4:SH4');
pdf15 = xlsread('Seriesdetaylor.xlsx','B11:SH11');
pdf20 = xlsread('Seriesdetaylor.xlsx','B18:SH18');
pdf25 = xlsread('Seriesdetaylor.xlsx','B25:SH25');
pdf30 = xlsread('Seriesdetaylor.xlsx','B32:SH32');
x = -25:.1:25;
hold on
plot(x,pdf10)
ylabel('P(FS)')
xlabel('Factor de seguridad')
plot(x,pdf15)
plot(x,pdf20)
plot(x,pdf25)
plot(x,pdf30)
legend('pdf10','pdf15','pdf20','pdf25','pdf30')
title('FS vs P(FS)')
hold off
%pdf
cdf10 = xlsread('Seriesdetaylor.xlsx','B5:SH5');
cdf15 = xlsread('Seriesdetaylor.xlsx','B12:SH12');
cdf20 = xlsread('Seriesdetaylor.xlsx','B19:SH19');
cdf25 = xlsread('Seriesdetaylor.xlsx','B26:SH26');
cdf30 = xlsread('Seriesdetaylor.xlsx','B33:SH33');
x = -25:.1:25;
hold on
plot(x,cdf10)
ylabel('P(FS)')
xlabel('Factor de seguridad')
plot(x,cdf15)
plot(x,cdf20)
plot(x,cdf25)
plot(x,cdf30)
legend('cdf10','cdf15','cdf20','cdf25','cdf30')
title('FS vs P(FS)')
hold off