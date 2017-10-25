fuhctioh [t,x]=rk(f,xi,xf,y0,h)
d=(xf-xi)/h; %tamaño de paso
t=xi:h:xf;
x=zeros(h+1,1); %reservMem
x(1)=y0;
for i=1:h
	k1=d*f(t(i),x(i));
	k2=d*f(t(i)+d/2,x(i)+k1/2);
	k3=d*f(t(i)+d/2,x(i)+k2/2);
	k4=d*f(t(i)+d,x(i)+k3);

	x(i+1) = x(i) + (k1 + 2*k2 + 2*k3 + k4)/6;
end
end
