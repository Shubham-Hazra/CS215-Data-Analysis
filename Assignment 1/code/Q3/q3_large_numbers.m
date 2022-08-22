rng("default")

%RANDOM VARIABLE X IS TAKEN AS THE NUMBER OBTAINED ON A ROLL OF A DIE
X = randi([1,6],1,10000);

%WE KNOW THAT TRUE MEAN OF X is 3.5
true_mean =3.5;

%COMPUTED MEAN
mean = zeros(1,10000);
for i=1:10000
    mean(i)=sum(X(1:i))/i;
end

%PLOTTING COMPUTED MEAN vs TRUE MEAN
x = linspace(0,1000,10000);
plot(x,true_mean*ones(1,10000),'b-_',MarkerSize=10)
hold on
plot(x,mean,'r.-.',MarkerSize=4);
hold off
grid on
xlabel 'Number of trials'
ylabel 'Mean'
legend('True Mean','Computed Mean');
title 'True vs Computed Mean'

%WE KNOW THAT THE TRUE VARIANCE OF A DIE ROLL is 2.91667
true_var = 2.91667;

%DEFINING THE RANDOM VARIABLE V
V = ((X-mean).^2);

%COMPUTING EXPECTATION VALUE OF V
v=zeros(1,10000);
for i=1:10000
    v(i)=sum(V(1:i))/i;
end

%PLOTTING TRUE VARIANCE vs EXPECTED VALUE OF V
x = linspace(0,1000,10000);
plot(x,true_var*ones(1,10000),'b-_',MarkerSize=10)
hold on
plot(x,v,'r.-.',MarkerSize=4);
hold off
grid on
xlabel 'Number of trials'
ylabel 'Variance'
legend('True Variance','Computed Variance');
title 'True vs Computed Variance'


%PLOTTING VARIANCE OF RANDOM VARIABLE V
V1 = (V-v).^2;
v1 = zeros(1,10000);
for i=1:10000
    v1(i)=sum(V1(1:i))/i;
end
x = linspace(0,1000,10000);
plot(x,v1,'b.-.',MarkerSize=4)
grid on
ylabel 'Variance of V'
xlabel 'Trials'
title 'Variance of Random Variable V'
