clc;clear;
S=0:0.2:4.0;
VOUT1=[445 440 436 432 428 427 423 423 420 418 420 416 417 415 418 415 416 416 415 415 418];
VOUT2=[442 438 434 430 427 427 423 421 419 417 419 417 416 416 414 417 414 415 415 415 418];
VOUT3=[442 437 432 428 425 425 421 419 417 416 417 414 414 413 413 415 412 413 413 412 414];
VOUT4=[437 434 430 426 422 423 419 418 416 414 416 413 413 413 412 414 412 412 412 411 414];
VOUT5=[437 434 430 426 422 422 419 418 416 415 416 412 413 412 411 414 411 412 411 410 413];
VOUT6=[437 434 430 426 422 422 419 418 416 414 416 413 414 413 411 414 411 412 411 410 413];
VOUT=(VOUT1+VOUT2+VOUT3+VOUT4+VOUT5+VOUT6)/6;

xlswrite('c1.xlsx',{'S(��λ��mm)'},1,'A28');
xlswrite('c1.xlsx',S,1,'B28');
xlswrite('c1.xlsx',{'VOUT1(��λ��mV)'},1,'A29');
xlswrite('c1.xlsx',VOUT1,1,'B29');
xlswrite('c1.xlsx',{'VOUT2(��λ��mV)'},1,'A30');
xlswrite('c1.xlsx',VOUT2,1,'B30');
xlswrite('c1.xlsx',{'VOUT3(��λ��mV)'},1,'A31');
xlswrite('c1.xlsx',VOUT3,1,'B31');
xlswrite('c1.xlsx',{'VOUT4(��λ��mV)'},1,'A32');
xlswrite('c1.xlsx',VOUT4,1,'B32');
xlswrite('c1.xlsx',{'VOUT5(��λ��mV)'},1,'A33');
xlswrite('c1.xlsx',VOUT5,1,'B33');
xlswrite('c1.xlsx',{'VOUT6(��λ��mV)'},1,'A34');
xlswrite('c1.xlsx',VOUT6,1,'B34');
xlswrite('c1.xlsx',{'VOUT(��λ��mV)'},1,'A35');
xlswrite('c1.xlsx',VOUT,1,'B35');

plot(S,VOUT1);hold on;
plot(S,VOUT2);hold on;
plot(S,VOUT3);hold on;
plot(S,VOUT4);hold on;
plot(S,VOUT5);hold on;
plot(S,VOUT6);hold on;
xlabel('S(��λ��mm)');ylabel('VOUT(��λ��mV)');title('ͼ4.1.1 ʵ������');

figure(2)
plot(S,VOUT);
xlabel('S(��λ��mm)');ylabel('��λ��VOUT(mV)');
title('ͼ4.1.2 ���˴�����λ������ʵ��');

U=VOUT-(VOUT(1,1)).*ones(1,21);
U=abs(U);
figure(3)
plot(S,U);
xlabel('S(��λ��mm)');ylabel('��λ��|\DeltaU|(mV)');
title('ͼ4.1.3 ���˴�����λ����������');