%LAPLACE PDF

%DEFINING location parameter
u=2;
%DEFINING scale parameter
b=2;

%DEFINING ranges of x on which PDF will be computed
x=linspace(-10,10,2000);

%COMPUTING the PDF function - y = f(x)
y=exp(-abs(x-u)./b)/(2*b);

%PLOTTING 
plot(x,y,'b');

%SETTING PLOT FEATURES
xlabel 'X values';
ylabel 'PDF values';
title 'LAPLACE PDF'
grid on;
