rng("default")

%TO GENERATE RANDOM DRAW FROM X
%FUNCTION DEFINED IN ANOTHER SCRIPT
%CODE AS FOLLOWS

% function randx = randx(sz1,sz2)
% randx  = -1*rand(sz1,sz2)+rand(sz1,sz2);
% for i=1:sz1
%     for j=1:sz2
%         while randx(i,j)>1
%             randx(i,j)=randx(i,j)-(rand()/4);
%         end
%     end
% end
% 
% for i=1:sz1
%     for j=1:sz2
%         if randx(i,j)>0
%             randx(i,j)=1-randx(i,j);
%         else
%             randx(i,j)=-1-randx(i,j);
%         end
%     end
% end

%TAKING 100000 DRAWS FROM X
M=randx(1,100000);

%PLOTTING HISTOGRAM
h = histogram(M,200);
xlabel 'X values'
ylabel 'Frequency Values'

%PLOTTING CDF
bins = h.NumBins;
X = h.Values/100000;
cdf = reimann_sum(X,0,bins,bins);
cdf_val = linspace(-1.2,1.2,1.2*bins);
cdf_val(1:20)=zeros(1,20);
for i = 21:220
    cdf_val(i)=cdf(i-20);
 end
cdf_val(221:240)=cdf(bins);
x=linspace(-1.2,1.2,bins*1.2);
plot(x,cdf_val);
grid on
xlabel 'X values'
ylabel 'CDF Values'
title 'CDF of M distribution'
axis([-1.2,1.2 ,-.1,1.1]);


%CODE TO GENERATE INDEPENDENT DRAWS FROM Y

%USING RANDX FUNCTION WRITTEN IN THE PREVIOUS PART
% function randy = randy(N,sz1,sz2)
% sum = zeros(sz1,sz2);
% for i=1:N
%     sum = sum + randx(sz1,sz2);
% end
% randy = sum/N;


%PLOTTING HISTOGRAMS
N1=[1,2,4,8,16,32,64];
N=1;
Y = randy(N,1,1000);
h = histogram(Y,24);
value = h.Values;
bins=h.NumBins;
xlabel 'Y Values'
ylabel 'Frequency Values'
title 'RANDOM VARIABLE Y'

%PLOTTING CDF
cdf_plots = zeros(length(N1),24);
x = linspace(-1,1,24);
for i=1:length(N1)
     Y = randy(N,1,1000);
     h = histogram(Y,24);
     cdf_plots(i,:)=h.Values/1000;
end
for i=1:length(N1)
    plot(x,reimann_sum(cdf_plots(i,:),1,24,24));
    hold on
end
hold off
legend('N=1','N=2','N=4','N=8','N=16','N=32','N=64')
xlabel 'Y Values'
ylabel 'CDF Values'
title 'CDF of Y for different N '


















