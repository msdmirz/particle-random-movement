function [ x,y ] = changePath( x,y )

xstep = abs(randn);
ystep = abs(randn);
x = x + xstep;
y = y + ystep;
end







