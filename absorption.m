function [ xp,yp ] = absorption( xp,yp,L )
i = 1;
while 1
    if i >= length(xp) || length(xp) == 0
        break
    end
    if abs(xp(i)) >= L || abs(yp(i)) >= L
        r = rand;
        if r < 1/3
            xp(i) = [];
            yp(i) = [];
        else
            [xp(i),yp(i)] = changePath(xp(i),yp(i));
        end
    end
    i = i + 1;
    
end
end

