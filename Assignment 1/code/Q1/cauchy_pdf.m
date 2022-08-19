%CAUCHY PDF

%DEFINING location parameter
x0=0;
%DEFINING scale parameter
v=1;

%DEFINING ranges of x on which PDF will be computed
x=linspace(-10,10,2000);

%COMPUTING the PDF function - y = f(x)
y=(v^2./((x-x0).^2+v^2))/(pi*v);

%PLOTTING 
plot(x,y,'b');

%SETTING PLOT FEATURES
xlabel 'X values';
ylabel 'PDF values';
title 'CAUCHY PDF'
grid on;