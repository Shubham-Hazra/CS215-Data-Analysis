%FUNCTION TO GET A RANDOM VALUE Y OF THE FORM GIVEN IN THE ASSIGNMENTS

%USING RANDX FUNCTION WRITTEN IN THE PREVIOUS PART
function randy = randy(N,sz1,sz2)
sum = zeros(sz1,sz2);
for i=1:N
    sum = sum + randx(sz1,sz2);
end
randy = sum/N;


