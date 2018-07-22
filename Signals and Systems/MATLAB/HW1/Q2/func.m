function [ ] = func(f,L1,L2)
clc

syms q w t ;
X = int(f*exp(-q*w*t),t,L1,L2);
disp('  X(jw) ' ) , pretty(X)

w = -20:.01:20;
inline(X);
ans( -20:.01:20);
subplot(2 , 1 , 1 );
plot( w , real(ans) , 'g' , 'linewidth' , 2)
title( ' |X(jw)|  frequency domain ' )
xlabel( ' (w)    Range ' )
grid on;

subplot(2,1,2);
plot(w , imag(ans) , 'r' , 'linewidth' , 2.5)
title( ' < X(jw) Angle ' )
grid on;

end