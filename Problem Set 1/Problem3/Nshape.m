function N=Nshape(x,index)
    domain=0:0.25:1;
    index=index+1;
    s=length(domain);
    if(index==1)
        x1=domain(2);
        x0=domain(1);
        if(x0<=x && x<=x1)
            N=(x1-x)/(x1-x0);
        else
            N=0;
        end 
    elseif(index==s-1)
        xn_1=domain(index);
        xn=domain(index+1);
       
        if(domain(index)<=x && x<=domain(index+1))
            N=(x-xn_1)/(xn-xn_1);
        else
            N=0;
        end 
        
    else
        xi=domain(index);
        xi_1=domain(index-1);
        xip1=domain(index+1);
        if(xi_1<=x && x<=xi)
             N=(x-xi_1)/(xi-xi_1);
        elseif(xi<=x && x <=xip1)
            N=(xip1-x)/(xip1-xi);
        else
            N=0;
        end 
        
    end
        
end