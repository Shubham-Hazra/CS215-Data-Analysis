%FUNCTION TO GET A RANDOM VALUE WHOSE PDF LOOKS LIKE A M

function randx = randx(sz1,sz2)
randx = 2*rand(sz1,sz2)-1;
for i=1:sz1
    for j = 1:sz2
        if randx(i,j)>0
            randx(i,j)= sqrt(randx(i,j));
        else
            randx(i,j)= -sqrt(abs(randx(i,j)));
        end
    end
end