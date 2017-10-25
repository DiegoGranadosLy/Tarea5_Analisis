function [t,x]=rk(f,t0,tf,x0,n)
d=(tf-t0)/n; %tamaño de paso
t=t0:h:tf;
x=zeros(n+1,1); %reservMem
x(1)=x0;
for i=1:n
	k1=d*f(t(i),x(i));
	k2=d*f(t(i)+d/2,x(i)+k1/2);
	k3=d*f(t(i)+d/2,x(i)+k2/2);
	k4=d*f(t(i)+d,x(i)+k3);

	x(i+1) = x(i) + (k1 + 2*k2 + 2*k3 + k4)/6;
end
end
