%one path planning
clc,clear,close all
forbid=set_up;
er=1000;
best_path=[];
best_tr=0;
flag=1;
best_pa=[1 1 50;1 20 50;1 1 1;];
for tr=1:1e3
    [path,pa]=find_path3(flag,best_pa);
    [e1,e2]=check_path(forbid,pa);
    if e1 == 0 & e2<er
        er=e2;
        best_path = path;
        best_tr = tr;
        best_pa = pa;
    else
        flag = -flag;
    end
    
    f(tr)=er;
    [flag er];
end
% show
plot3(best_pa(1,:),best_pa(2,:),best_pa(3,:),'r')
scatter3(best_path(1,:),best_path(2,:),best_path(3,:))
er
best_tr
