clc;clear;close all;
T=40:5:80;
U1=[900 899 895 890 883 878 872 866 860];
U2=[896 892 889 892 881 870 853 848 843];
U3=[888 882 879 875 870 874 871 869 865];
U4=[891 890 889 884 880 872 867 861 858];
U5=[893 889 884 879 874 868 862 856 850];
U6=[890 881 875 871 875 866 859 855 848];
U=(U1+U2+U3+U4+U5+U6)/6;

xlswrite('b1.xlsx',{'T(单位：°C)'},1,'A1');
xlswrite('b1.xlsx',T,1,'B1');
xlswrite('b1.xlsx',{'U1(单位：mV)'},1,'A2');
xlswrite('b1.xlsx',U1,1,'B2');
xlswrite('b1.xlsx',{'U2(单位：mV)'},1,'A3');
xlswrite('b1.xlsx',U2,1,'B3');
xlswrite('b1.xlsx',{'U3(单位：mV)'},1,'A4');
xlswrite('b1.xlsx',U3,1,'B4');
xlswrite('b1.xlsx',{'U4(单位：mV)'},1,'A5');
xlswrite('b1.xlsx',U4,1,'B5');
xlswrite('b1.xlsx',{'U5(单位：mV)'},1,'A6');
xlswrite('b1.xlsx',U5,1,'B6');
xlswrite('b1.xlsx',{'U6(单位：mV)'},1,'A7');
xlswrite('b1.xlsx',U6,1,'B7');
xlswrite('b1.xlsx',{'U(单位：mV)'},1,'A8');
xlswrite('b1.xlsx',U,1,'B8');

plot(T,U1);hold on;
plot(T,U2);hold on;
plot(T,U3);hold on;
plot(T,U4);hold on;
plot(T,U5);hold on;
plot(T,U6);hold on;
xlabel('T(单位：°C)');ylabel('U(单位：mV)');title('图2.1.1 实验数据');

figure(2)
plot(T,U);
xlabel('T(单位：°C)');ylabel('U(单位：mV)');title('图2.1.2 PN结温度传感器特性实验');