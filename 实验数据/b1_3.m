clc;clear;close all;
T=40:5:80;
U1=[770 690 615 505 378 285 152 80 54];
U2=[755 608 435 285 110 108 75 40 36];
U3=[755 701 644 517 408 275 188 60 28];
U4=[768 588 442 315 138 85 72 49 21];
U5=[754 609 457 308 135 105 89 88 25];
U6=[762 612 438 301 144 88 65 31 14];
U=(U1+U2+U3+U4+U5+U6)/6;

xlswrite('b1.xlsx',{'T(单位：°C)'},1,'A19');
xlswrite('b1.xlsx',T,1,'B19');
xlswrite('b1.xlsx',{'U1(单位：mV)'},1,'A20');
xlswrite('b1.xlsx',U1,1,'B20');
xlswrite('b1.xlsx',{'U2(单位：mV)'},1,'A21');
xlswrite('b1.xlsx',U2,1,'B21');
xlswrite('b1.xlsx',{'U3(单位：mV)'},1,'A22');
xlswrite('b1.xlsx',U3,1,'B22');
xlswrite('b1.xlsx',{'U4(单位：mV)'},1,'A23');
xlswrite('b1.xlsx',U4,1,'B23');
xlswrite('b1.xlsx',{'U5(单位：mV)'},1,'A24');
xlswrite('b1.xlsx',U5,1,'B24');
xlswrite('b1.xlsx',{'U6(单位：mV)'},1,'A25');
xlswrite('b1.xlsx',U6,1,'B25');
xlswrite('b1.xlsx',{'U(单位：mV)'},1,'A26');
xlswrite('b1.xlsx',U,1,'B26');

plot(T,U1);hold on;
plot(T,U2);hold on;
plot(T,U3);hold on;
plot(T,U4);hold on;
plot(T,U5);hold on;
plot(T,U6);hold on;
xlabel('T(单位：°C)');ylabel('U(单位：mV)');title('图2.3.1 实验数据');

figure(2)
plot(T,U);
xlabel('T(单位：°C)');ylabel('U(单位：mV)');title('图2.3.2 NTC热敏电阻温度特性实验');