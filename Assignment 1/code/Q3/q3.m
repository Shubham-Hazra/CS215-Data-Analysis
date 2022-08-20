% SIMULATING RANDOM WALKERS
rng('default');

%CREATING A MATRIX WHERE ROWS ARE STEPS TAKEN AND COLUMNS ARE DIFFERENT
%RANDOM WALKERS
N =(-1).^randi([0,1],10000,1000);
final = zeros(10000,1);
for i = 1:10000
    final(i)=sum(N(i,:))/10000;
end

%PLOTTING A HISTOGRAM OF FINAL LOCATION
histogram(final);
xlabel 'LOCATION'
ylabel 'NUMBER OF WALKERS'


%PLOTTING LOCATION VS TIME FOR FIRST 1000 WALKERS
x = linspace(0,25,1000);
steps = zeros(1000,1000);
for i=1:1000
    for j=1:1000
        t = N(i,:);
        steps(i,j)=sum(t(1:j))/1000;
    end
    plot(x,steps(i,:));
    hold on
end
xlabel 'TIME'
ylabel 'LOCATION'
title ''
grid on
hold off


