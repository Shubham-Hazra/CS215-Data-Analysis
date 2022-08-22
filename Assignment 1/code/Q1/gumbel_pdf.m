%GUMBEL PDF

%DEFINING location parameter
u=1;
%DEFINING scale parameter
b=2;

%DEFINING ranges of x on which PDF will be computed
x=linspace(-5,15,2000);

%COMPUTING the PDF function - y = f(x)
y=exp(-((x-u)/b + exp(-(x-u)/b)))/b;

%PLOTTING 
plot(x,y,'b');

%SETTING PLOT FEATURES
xlabel 'X values';
ylabel 'PDF values';
title 'GUMBEL PDF'
grid on;
