%FFT of a sinusoidal signal
clc;
clear all;
close all;
t=0:0.01:1;
a=sin(2*pi*10*t)+sin(2*pi*100*t);
b=fft(a);
c=abs(b);
d=length(a);
e=c/d;
subplot(2,1,1),plot(t,a);
xlabel('time')
ylabel('amplitude')
title('Input Signal')
subplot(2,1,2),plot(e);
xlabel('frequency')
ylabel('amplitude')
title('fft of the input signal');
