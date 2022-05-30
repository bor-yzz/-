clc;clear;close all;
T=40:5:80;
U1=[732 785 823 839 805 817 884 929 944];
U2=[765 771 779 812 899 863 942 985 997];
U3=[765 773 778 784 799 816 827 855 881];
U4=[800 801 832 857 915 893 942 968 994];
U5=[800 815 818 833 854 862 877 884 895];
U6=[803 821 837 842 855 861 865 870 897];
U=(U1+U2+U3+U4+U5+U6)/6;

xlswrite('b1.xlsx',{'T(��λ����C)'},1,'A10');
xlswrite('b1.xlsx',T,1,'B10');
xlswrite('b1.xlsx',{'U1(��λ��mV)'},1,'A11');
xlswrite('b1.xlsx',U1,1,'B11');
xlswrite('b1.xlsx',{'U2(��λ��mV)'},1,'A12');
xlswrite('b1.xlsx',U2,1,'B12');
xlswrite('b1.xlsx',{'U3(��λ��mV)'},1,'A13');
xlswrite('b1.xlsx',U3,1,'B13');
xlswrite('b1.xlsx',{'U4(��λ��mV)'},1,'A14');
xlswrite('b1.xlsx',U4,1,'B14');
xlswrite('b1.xlsx',{'U5(��λ��mV)'},1,'A15');
xlswrite('b1.xlsx',U5,1,'B15');
xlswrite('b1.xlsx',{'U6(��λ��mV)'},1,'A16');
xlswrite('b1.xlsx',U6,1,'B16');
xlswrite('b1.xlsx',{'U(��λ��mV)'},1,'A17');
xlswrite('b1.xlsx',U,1,'B17');

plot(T,U1);hold on;
plot(T,U2);hold on;
plot(T,U3);hold on;
plot(T,U4);hold on;
plot(T,U5);hold on;
plot(T,U6);hold on;
xlabel('T(��λ����C)');ylabel('U(��λ��mV)');title('ͼ2.2.1 ʵ������');

figure(2)
plot(T,U);
xlabel('T(��λ����C)');ylabel('U(��λ��mV)');title('ͼ2.2.2 PTC���������¶�����ʵ��');