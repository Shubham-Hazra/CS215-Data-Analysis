%GUMBEL CDF

%DEFINING location parameter
u=1;
%DEFINING scale parameter
b=2;

%DEFINING ranges of x on which PDF will be computed
x=linspace(-5,15,2000);

%COMPUTING the PDF function - y = f(x)
y=exp(-((x-u)/b + exp(-(x-u)/b)))/b;

%COMPUTING the CDF using reimann_sum function defined before
f = reimann_sum(y,-5,15,2000);

%PLOTTING
plot(x,f,'b');

%SETTING PLOT FEATURES
xlabel 'X values';
ylabel 'CDF values';
title 'GUMBEL CDF'
grid on;
