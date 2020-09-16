function approx=getapprox(n,m)
xapprox=0:1/m:1;
yapprox=sin(n*pi*xapprox);
approx=[xapprox(:),yapprox(:)];
end 