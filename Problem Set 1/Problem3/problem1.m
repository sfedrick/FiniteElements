m=100;

x_exact=0:1/m:1;


fun=@(x,n) sin(n*pi*x);
exactn4= fun(x_exact,4);
hold on;
exact=@(x,n) interp1(x_exact,fun(x_exact,n),x);
plot(x_exact,exactn4,'DisplayName','Exact','Linewidth',3)
for n=0:1:8
    x_approx=0:1/n:1;
    approx=exact(x_approx,4);
    plot(x_approx,approx,'DisplayName',"m= "+num2str(n),'Linewidth',2)
end
xlabel('x') 
ylabel('Sin(4*x)')
legend
hold off;



