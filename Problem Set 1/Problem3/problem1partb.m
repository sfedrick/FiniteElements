d=[];
domain=2:2:50;
for m=domain
  fun=@(x) getintegrand(x,2,m)
  newd=(integral(fun,0,1)).^(0.5);
  d=[d;newd];  
end

Const = polyfit(log(domain),log(d), 1);
m = Const(1);
k = Const(2);
LineBestFit= domain.^m.*exp(k);
hold on
scatter(domain, d,'DisplayName','D(m)','Linewidth',1)
plot(domain,LineBestFit,'DisplayName','Fit','Linewidth',3);
xlabel('M') 
ylabel('RMSE') 
set(gca,'xscale','log','yscale','log')
legend
hold off
grid