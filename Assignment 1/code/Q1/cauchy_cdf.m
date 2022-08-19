%CAUCHY CDF

%DEFINING location parameter
x0=0;
%DEFINING scale parameter
v=1;

%DEFINING ranges of x on which PDF will be computed
x=linspace(-10,15,2500);

%COMPUTING the PDF function - y = f(x)
y=(v^2./((x-x0).^2+v^2))/(pi*v);

%COMPUTING the CDF using reimann_sum function defined before
f = reimann_sum(y,-10,15,2500);

%PLOTTING
plot(x,f,'b');

%SETTING PLOT FEATURES
xlabel 'X values';
ylabel 'CDF values';
title 'CAUCHY CDF'
grid on;
