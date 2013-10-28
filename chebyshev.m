%Chebyshev low-pass filter type-2
clc;
clear all;
close all;
Wp=40/500; %Pass band frequency in radians
Ws=150/500; %Stop band frequency in radians
alphap= 3; %Pass band attenuation in dB
alphas = 60; %Stop band frequency in dB
[n,Ws] = cheb2ord(Wp,Ws,alphap,alphas);
[b,a] = cheby2(n,alphas,Ws);
[h,w] = freqz(b,a);
subplot(2,1,1),plot(w/pi,20*log10(abs(h)));
xlabel('Normalized Frequency')
ylabel('gain in db')
title('Magnitude Response')
subplot(2,1,2),plot(w/pi,angle(h));
xlabel('Normalized Frequency')
ylabel('phase in radians')
title('phase response')