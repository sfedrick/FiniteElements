function integrand=getintegrand(x,n,m)
    exact=getapprox(n,100);
    approx=getapprox(n,m);
    exactinterp=interp1(exact(:,1),exact(:,2),x);
    approxinterp=interp1(approx(:,1),approx(:,2),x);
    integrand= ((exactinterp)-(approxinterp)).^2;
    
end 