% Response of low-pass FIR filter using Bartlett(Triangular) window 
clc; 
clear all; 
close all; 
n=20; fp=100; 
fq=300; fs=1000; 
fn=2*fp/fs; window=bartlett(n+1); 
b=fir1(n,fn,window); 
w=0:0.001:pi; 
[h,orn]=freqz(b,1,w); 
a=20*log10(abs(h)); 
b=angle(h); 
subplot(2,1,1);plot(w/pi,a); 
xlabel('Normalized frequency') 
ylabel('Gain in db') 
title('magnitude plot') 
subplot(2,1,2);plot(w/pi,b); 
xlabel('Normalized frequency') 
ylabel('Phase in radians') 
title('Phase Response') 