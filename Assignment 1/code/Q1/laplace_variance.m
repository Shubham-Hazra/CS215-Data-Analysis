%LAPLACE VARIANCE

%DEFINING location parameter
u=2;
%DEFINING scale parameter
b=2;

%DEFINING ranges of x on which variance will be computed
x=linspace(-100,100,10000);

%COMPUTING the PDF function - y = f(x)
y=exp(-abs(x-u)./b)/(2*b);

%COMPUTING the variance using variance function defined before
var = variance(x,y,-100,100,10000);

%PRINTING VARIANCE
disp(var);
