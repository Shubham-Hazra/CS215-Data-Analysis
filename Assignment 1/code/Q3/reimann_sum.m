%FUNCTION TO COMPUTE REIMANN SUMS

function f=reimann_sum(y,a,b,n)
f=zeros(n);
for i=1:n
sum = 0;
dx = (b-a)/n;
for k=1:i
sum = sum + y(k);
end
sum = dx*sum;
f(i)=sum;
end
 