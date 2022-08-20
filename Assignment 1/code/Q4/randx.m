%FUNCTION TO GET A RANDOM VALUE WHOSE PDF LOOKS LIKE A M

function randx = randx(sz1,sz2)
randx  = -1*rand(sz1,sz2)+rand(sz1,sz2);
for i=1:sz1
    for j=1:sz2
        while randx(i,j)>1
            randx(i,j)=randx(i,j)-(rand()/4);
        end
    end
end

for i=1:sz1
    for j=1:sz2
        if randx(i,j)>0
            randx(i,j)=1-randx(i,j);
        else
            randx(i,j)=-1-randx(i,j);
        end
    end
end