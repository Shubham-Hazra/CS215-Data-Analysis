%LAPLACE CDF

%DEFINING location parameter
u=2;
%DEFINING scale parameter
b=2;

%DEFINING ranges of x on which PDF will be computed
x=linspace(-10,10,2000);

%COMPUTING the PDF function - y = f(x)
y=exp(-abs(x-u)./b)/(2*b);

%COMPUTING the CDF using reimann_sum function defined before
f = reimann_sum(y,-10,10,2000);

%PLOTTING
plot(x,f,'b');

%SETTING PLOT FEATURES
xlabel 'X values';
ylabel 'CDF values';
title 'LAPLACE CDF'
grid on;
