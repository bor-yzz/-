clc;clear;
E=100:50:450;
U1=[4.62 6.00 8.83 11.14 11.13 11.11 11.10 11.08];
U2=[3.87 7.21 9.07 11.13 11.10 11.10 11.09 11.08];
U3=[3.87 5.46 8.31 11.14 11.13 11.10 11.09 11.09];
U4=[5.01 7.64 9.54 11.14 11.13 11.11 11.10 11.09];
U5=[5.01 7.17 9.13 11.03 11.08 11.06 11.04 11.03];
U6=[4.35 6.67 8.75 11.06 11.05 10.98 11.00 11.03];
U=(U1+U2+U3+U4+U5+U6)/6;

xlswrite('c1.xlsx',{'E(单位：xl)'},1,'A19');
xlswrite('c1.xlsx',E,1,'B19');
xlswrite('c1.xlsx',{'U1(单位：V)'},1,'A20');
xlswrite('c1.xlsx',U1,1,'B20');
xlswrite('c1.xlsx',{'U2(单位：V)'},1,'A21');
xlswrite('c1.xlsx',U2,1,'B21');
xlswrite('c1.xlsx',{'U3(单位：V)'},1,'A22');
xlswrite('c1.xlsx',U3,1,'B22');
xlswrite('c1.xlsx',{'U4(单位：V)'},1,'A23');
xlswrite('c1.xlsx',U4,1,'B23');
xlswrite('c1.xlsx',{'U5(单位：V)'},1,'A24');
xlswrite('c1.xlsx',U5,1,'B24');
xlswrite('c1.xlsx',{'U6(单位：V)'},1,'A25');
xlswrite('c1.xlsx',U6,1,'B25');
xlswrite('c1.xlsx',{'U(单位：V)'},1,'A26');
xlswrite('c1.xlsx',U,1,'B26');

plot(E,U1);hold on;
plot(E,U2);hold on;
plot(E,U3);hold on;
plot(E,U4);hold on;
plot(E,U5);hold on;
plot(E,U6);hold on;
xlabel('E(单位：lx)');ylabel('U(单位：V)');title('图3.3.1 实验数据');

figure(2)
plot(E,U);
xlabel('E(单位：lx)');ylabel('单位：U(V)');title('图3.3.2 光敏三极管实验');