function cost = costfuncMAD(currentBlk, refBlk, n)

err = 0; 
for i = 1:n
    for j = 1:n
        result= result + abs((currentBlk(i,j)-refBlk(i,j)));
    end
end

cost = result/(n*n);
end