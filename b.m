clc;clear;
T=40:5:80;

U1=[0	4.1667	7.8333	11.1667	15.8333	21.6667	29	33.8333	39];
U2=[0	16.8333	33.6667	50.3333	77	74.5000	112	137.6667	157.1667];
U3=[0	126	255.5000 388.8333 541.8333 603	653.8333 702.6667 731];
figure(1)
plot(T,U1)
xlabel('温度（°C）');ylabel('输出值（mV）');
figure(2)
plot(T,U2)
xlabel('温度（°C）');ylabel('输出值（mV）');
figure(3)
plot(T,U3)
xlabel('温度（°C）');ylabel('输出值（mV）');
figure(4)
plot(T,-U1);hold on;
plot(T,U2);hold on;
plot(T,-U3);hold on;
xlabel('温度(°C)');ylabel('输出值变化量(mV)');