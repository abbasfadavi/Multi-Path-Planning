function [path,pa]=find_path
n= randi([1 3],1,1);
path=zeros(3,n+2);
path(:,1)=[1 1 1];
path(:,2:end-1)=randi([1 50],3,n);
path(:,n+2)=[50 50 1];

px=[];
py=[];
pz=[];
for i=1:n+1
    d=round(sqrt(sum((path(:,i)-path(:,i+1)).^2)));
    px=[px linspace(path(1,i),path(1,i+1),d)];
    py=[py linspace(path(2,i),path(2,i+1),d)]; 
    pz=[pz linspace(path(3,i),path(3,i+1),d)];    
end
rep=find(diff(px)==0 & diff(py)==0);
px(rep)=[];
py(rep)=[];
pz(rep)=[];
pa=[px;py;pz];