%CAUCHY VARIANCE

%DEFINING location parameter
x0=0;
%DEFINING scale parameter
v=1;

%DEFINING ranges of x on which variance will be computed
x=linspace(-100,200,10000);

%COMPUTING the PDF function - y = f(x)
y=(v^2./((x-x0).^2+v^2))/(pi*v);

%COMPUTING the variance using variance function defined before
var1 = variance(x,y,-10,20,10000);
var2 = variance(x,y,-100,200,10000);
var3 = variance(x,y,-500,1000,10000);
var4 = variance(x,y,-1000,2000,10000);

%PRINTING VARIANCE
disp(var1);
disp(var2);
disp(var3);
disp(var4);