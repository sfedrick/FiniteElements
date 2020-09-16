


%N0N1=@(x,n) Nshape(x,n);
N0N1=@(x,t) tester(x,t);
x=0:0.05:1;
y=N0N1(x,1);
plot(x,y)
%q = integral(@(x) N0N1(x,2),0,1);