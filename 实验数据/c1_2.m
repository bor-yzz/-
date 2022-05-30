clc;clear;
E=100:50:450;
U1=[7.29 11.15 11.13 11.09 11.08 11.05 11.05 11.03];
U2=[8.59 11.14 11.12 11.10 11.08 11.06 11.04 11.03];
U3=[8.59 11.14 11.13 11.09 11.05 11.06 11.04 11.02];
U4=[7.72 11.16 11.11 11.04 11.03 11.07 11.03 11.02];
U5=[7.72 11.15 11.11 11.09 10.95 10.98 11.04 11.00];
U6=[7.90 11.14 11.11 11.10 11.10 11.06 11.03 11.00];
U=(U1+U2+U3+U4+U5+U6)/6;

xlswrite('c1.xlsx',{'E(单位：xl)'},1,'A10');
xlswrite('c1.xlsx',E,1,'B10');
xlswrite('c1.xlsx',{'U1(单位：V)'},1,'A11');
xlswrite('c1.xlsx',U1,1,'B11');
xlswrite('c1.xlsx',{'U2(单位：V)'},1,'A12');
xlswrite('c1.xlsx',U2,1,'B12');
xlswrite('c1.xlsx',{'U3(单位：V)'},1,'A13');
xlswrite('c1.xlsx',U3,1,'B13');
xlswrite('c1.xlsx',{'U4(单位：V)'},1,'A14');
xlswrite('c1.xlsx',U4,1,'B14');
xlswrite('c1.xlsx',{'U5(单位：V)'},1,'A15');
xlswrite('c1.xlsx',U5,1,'B15');
xlswrite('c1.xlsx',{'U6(单位：V)'},1,'A16');
xlswrite('c1.xlsx',U6,1,'B16');
xlswrite('c1.xlsx',{'U(单位：V)'},1,'A17');
xlswrite('c1.xlsx',U,1,'B17');

plot(E,U1);hold on;
plot(E,U2);hold on;
plot(E,U3);hold on;
plot(E,U4);hold on;
plot(E,U5);hold on;
plot(E,U6);hold on;
xlabel('E(单位：lx)');ylabel('U(单位：V)');title('图3.2.1 实验数据');

figure(2)
plot(E,U);
xlabel('E(单位：lx)');ylabel('单位：U(V)');title('图3.2.2 光敏二极管实验');