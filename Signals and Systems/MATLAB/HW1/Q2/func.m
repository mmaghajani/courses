syms t k
T = 3/2;
w0 = 2*pi/T;
k = -100:100;

ck = (1/T)*(int((-2*t+1)*exp(-j*w0*k*t),t,0,1/2) + int((2*t-2)*exp(-j*w0*k*t),t,1,3/2));