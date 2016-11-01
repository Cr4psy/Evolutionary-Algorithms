function f = bin2Dec(x,upperBound,lowerBound)
val=0;
    for i = 1:size(x,2)
        val=val+x(i)*(2^(i-1));
    end
    f=val/2^size(x,2)*(upperBound-lowerBound)+lowerBound;
end