clc;clear;close all;
G=20:20:200;
U1=[-40 -90 -150 -210 -270 -340 -410 -470 -540 -610];
U2=[-50 -120 -200 -270 -350 -420 -470 -480 -550 -610];
U3=[-50 -110 -180 -240 -310 -380 -450 -500 -570 -630];
U4=[-10 -70 -140 -210 -280 -340 -410 -480 -550 -630];
U5=[-10 -70 -130 -200 -260 -330 -400 -460 -530 -600];
U6=[-10 -80 -150 -220 -250 -320 -390 -450 -520 -600];
U=(U1+U2+U3+U4+U5+U6)/6;

xlswrite('a1.xlsx',{'G(单位：g)'},1,'A10');
xlswrite('a1.xlsx',G,1,'B10');
xlswrite('a1.xlsx',{'U1(单位：mV)'},1,'A11');
xlswrite('a1.xlsx',U1,1,'B11');
xlswrite('a1.xlsx',{'U2(单位：mV)'},1,'A12');
xlswrite('a1.xlsx',U2,1,'B12');
xlswrite('a1.xlsx',{'U3(单位：mV)'},1,'A13');
xlswrite('a1.xlsx',U3,1,'B13');
xlswrite('a1.xlsx',{'U4(单位：mV)'},1,'A14');
xlswrite('a1.xlsx',U4,1,'B14');
xlswrite('a1.xlsx',{'U5(单位：mV)'},1,'A15');
xlswrite('a1.xlsx',U5,1,'B15');
xlswrite('a1.xlsx',{'U5(单位：mV)'},1,'A16');
xlswrite('a1.xlsx',U6,1,'B16');
xlswrite('a1.xlsx',{'U(单位：mV)'},1,'A17');
xlswrite('a1.xlsx',U,1,'B17');

plot(G,U1);hold on;
plot(G,U2);hold on;
plot(G,U3);hold on;
plot(G,U4);hold on;
plot(G,U5);hold on;
plot(G,U6);hold on;
xlabel('G(单位：g)');ylabel('U(单位：mV)');title('图1.2.1 实验数据');

figure(2)
plot(G,U);
xlabel('G(单位：g)');ylabel('U(单位：mV)');title('图1.2.2 半桥性能实验');