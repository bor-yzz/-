clc;clear;close all;
G=20:20:200;
U1=[-530 -650 -780 -900 -1030 -1160 -1290 -1430 -1560 -1690];
U2=[-460 -590 -720 -850 -980 -1090 -1290 -1410 -1560 -1690];
U3=[-460 -590 -730 -860 -990 -1120 -1260 -1390 -1520 -1650];
U4=[-500 -630 -750 -880 -1020 -1150 -1270 -1400 -1530 -1650];
U5=[-500 -640 -770 -900 -1030 -1160 -1290 -1420 -1550 -1680];
U6=[-480 -610 -740 -880 -1010 -1150 -1280 -1420 -1550 -1680];
U=(U1+U2+U3+U4+U5+U6)/6;

xlswrite('a1.xlsx',{'G(��λ��g)'},1,'A19');
xlswrite('a1.xlsx',G,1,'B19');
xlswrite('a1.xlsx',{'U1(��λ��mV)'},1,'A20');
xlswrite('a1.xlsx',U1,1,'B20');
xlswrite('a1.xlsx',{'U2(��λ��mV)'},1,'A21');
xlswrite('a1.xlsx',U2,1,'B21');
xlswrite('a1.xlsx',{'U3(��λ��mV)'},1,'A22');
xlswrite('a1.xlsx',U3,1,'B22');
xlswrite('a1.xlsx',{'U4(��λ��mV)'},1,'A23');
xlswrite('a1.xlsx',U4,1,'B23');
xlswrite('a1.xlsx',{'U5(��λ��mV)'},1,'A24');
xlswrite('a1.xlsx',U5,1,'B24');
xlswrite('a1.xlsx',{'U5(��λ��mV)'},1,'A25');
xlswrite('a1.xlsx',U6,1,'B25');
xlswrite('a1.xlsx',{'U(��λ��mV)'},1,'A26');
xlswrite('a1.xlsx',U,1,'B26');

plot(G,U1);hold on;
plot(G,U2);hold on;
plot(G,U3);hold on;
plot(G,U4);hold on;
plot(G,U5);hold on;
plot(G,U6);hold on;
xlabel('G(��λ��g)');ylabel('U(��λ��mV)');title('ͼ1.3.1 ʵ������');

figure(2)
plot(G,U);
xlabel('G(��λ��g)');ylabel('U(��λ��mV)');title('');