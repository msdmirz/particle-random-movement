%n is the number of particle
n = 1000;
%L is the length of plate
L = 10;
%d is the length of step
d = 0.1;
%t is simulation time
t = 1000;
xp = zeros(1,n);
yp = zeros(1,n);
cs = zeros(1,t);
figure,
%f = struct('cdata',[],'colormap',[])
%i = 1;
for j=1:t
    scatter(xp,yp,'fill')
    axis([-L L -L L])
    drawnow
    %f(i) = getframe;
    xstep = randn(1,length(xp));
    ystep = randn(1,length(xp));
    xp = xp + d*xstep./sqrt(xstep.^2  + ystep.^2);
    yp = yp + d*ystep./sqrt(xstep.^2  + ystep.^2);
    [xp,yp] = absorption(xp,yp,L);
    cs(j) = length(xp);
    %f = [f struct('cdata',[],'colormap',[])];
    %i = i + 1;
    %pause(1/20)
end
h = ones(1,t);
h = n * h;
cs = h - cs;
figure,
plot(1:t,cs)
%movie(f,1,6)