%% 数据后处理 by Ding Guo-yu 2022.6.15

outy=out.simout;
outyy=outy.Data;
outxx=outy.Time;
for i=1:10    
    A(i)=sum(outyy(outxx<=(i-0.01) & outxx>=(i-1)));
end
t=linspace(0.5,9.5,10);
plot(t,A/(1/0.01))
hold on
plot(outy)



outy=out.simout;
outyy=outy.Data;
outxx=outy.Time;
B(1)=sum(outyy(1:101));
for i=2:10    
    B(i)=sum(outyy((i-1)*100+2:i*100+1));
end

[B(1)/B(10)
B(2)/B(10)
B(3)/B(10)
B(4)/B(10)
B(5)/B(10)
B(6)/B(10)
B(7)/B(10)
B(8)/B(10)
B(9)/B(10)
B(10)/B(10)]


outy=out.simout;
outyy=outy.Data;
outxx=outy.Time;
t=linspace(0.5,9.5,10);
plot(outy)
hold on
