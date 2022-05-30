clc;clear;
E=100:50:450;
U1=[11.14 11.11 11.07 11.02 11.04 11.05 11.02 11.01];
U2=[11.11 11.08 11.04 11.06 11.05 11.04 11.03 11.01];
U3=[11.11 11.08 11.06 11.04 11.02 11.01 11.00 10.97];
U4=[11.13 11.11 11.07 11.05 11.04 11.02 11.01 10.97];
U5=[11.13 11.11 11.09 11.06 11.04 11.03 11.01 10.99];
U6=[11.14 11.11 11.09 11.06 11.05 11.03 11.00 10.99];
U=(U1+U2+U3+U4+U5+U6)/6;

xlswrite('c1.xlsx',{'E(单位：xl)'},1,'A1');
xlswrite('c1.xlsx',E,1,'B1');
xlswrite('c1.xlsx',{'U1(单位：V)'},1,'A2');
xlswrite('c1.xlsx',U1,1,'B2');
xlswrite('c1.xlsx',{'U2(单位：V)'},1,'A3');
xlswrite('c1.xlsx',U2,1,'B3');
xlswrite('c1.xlsx',{'U3(单位：V)'},1,'A4');
xlswrite('c1.xlsx',U3,1,'B4');
xlswrite('c1.xlsx',{'U4(单位：V)'},1,'A5');
xlswrite('c1.xlsx',U4,1,'B5');
xlswrite('c1.xlsx',{'U5(单位：V)'},1,'A6');
xlswrite('c1.xlsx',U5,1,'B6');
xlswrite('c1.xlsx',{'U6(单位：V)'},1,'A7');
xlswrite('c1.xlsx',U6,1,'B7');
xlswrite('c1.xlsx',{'U(单位：V)'},1,'A8');
xlswrite('c1.xlsx',U,1,'B8');

plot(E,U1);hold on;
plot(E,U2);hold on;
plot(E,U3);hold on;
plot(E,U4);hold on;
plot(E,U5);hold on;
plot(E,U6);hold on;
xlabel('E(单位：lx)');ylabel('U(单位：V)');title('图3.1.1 实验数据');

figure(2)
plot(E,U);
xlabel('E(单位：lx)');ylabel('单位：U(V)');title('实验3.1.2 光敏电阻实验');