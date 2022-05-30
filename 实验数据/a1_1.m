clc;clear;close all;
G=20:20:200;
U1=[-21 -45 -76 -97 -121 -151 -172 -193 -229 -252];
U2=[+19 -20 -45 -74 -104 -132 -165 -192 -219 -252];
U3=[+19 -10 -34 -60 -95 -126 -155 -173 -202 -234];
U4=[+9 -22 -43 -72 -103 -123 -150 -169 -212 -234];
U5=[+9 -27 -62 -89 -116 -160 -194 -224 -248 -281];
U6=[-40 -63 -82 -112 -146 -174 -196 -224 -253 -281];
U=(U1+U2+U3+U4+U5+U6)/6;

xlswrite('a1.xlsx',{'G(单位：g)'},1,'A1');
xlswrite('a1.xlsx',G,1,'B1');
xlswrite('a1.xlsx',{'U1(单位：mV)'},1,'A2');
xlswrite('a1.xlsx',U1,1,'B2');
xlswrite('a1.xlsx',{'U2(单位：mV)'},1,'A3');
xlswrite('a1.xlsx',U2,1,'B3');
xlswrite('a1.xlsx',{'U3(单位：mV)'},1,'A4');
xlswrite('a1.xlsx',U3,1,'B4');
xlswrite('a1.xlsx',{'U4(单位：mV)'},1,'A5');
xlswrite('a1.xlsx',U4,1,'B5');
xlswrite('a1.xlsx',{'U5(单位：mV)'},1,'A6');
xlswrite('a1.xlsx',U5,1,'B6');
xlswrite('a1.xlsx',{'U5(单位：mV)'},1,'A7');
xlswrite('a1.xlsx',U6,1,'B7');
xlswrite('a1.xlsx',{'U(单位：mV)'},1,'A8');
xlswrite('a1.xlsx',U,1,'B8');

plot(G,U1);hold on;
plot(G,U2);hold on;
plot(G,U3);hold on;
plot(G,U4);hold on;
plot(G,U5);hold on;
plot(G,U6);hold on;
xlabel('G(单位：g)');ylabel('U(单位：mV)');title('图1.1.1 实验数据');

figure(2)
plot(G,U);
xlabel('G(单位：g)');ylabel('U(单位：mV)');title('图1.1.2 单臂电桥性能实验');