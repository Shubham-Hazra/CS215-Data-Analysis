%GUMBEL VARIANCE

%DEFINING location parameter
u=1;
%DEFINING scale parameter
b=2;

%DEFINING ranges of x on which variance will be computed
x=linspace(-50,150,10000);

%COMPUTING the PDF function - y = f(x)
y=exp(-((x-u)/b + exp(-(x-u)/b)))/b;

%COMPUTING the variance using variance function defined before
var = variance(x,y,-50,150,10000);

%PRINTING VARIANCE
disp(var);