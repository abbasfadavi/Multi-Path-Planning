function [e1,e2]=check_path(forbid,pa)
    px=pa(1,:);
    py=pa(2,:);
    pz=pa(3,:);
e1=0;
for i=1:size(forbid,2)
f=forbid(i,:);
k1=px>=f(1) & px<=f(1)+f(3);    
k2=py>=f(2) & py<=f(2)+f(4);     
k3=pz<=f(5);
k=k1&k2&k3;
e1=e1+sum(k);
end
e2=length(px);


