clc,clear,close all
forbid=set_up;
er=1000;
best_path=[];
best_pa=[];
best_tr=0;
for tr=1:100
    [path,pa]=find_path;
    [e1,e2]=check_path(forbid,pa);
    if e1<er
        er=e1;
        best_path = path;
        best_tr = tr;
        best_pa = pa;
    end
end
% show
plot3(best_pa(1,:),best_pa(2,:),best_pa(3,:),'r')
scatter3(best_path(1,:),best_path(2,:),best_path(3,:))
er
best_tr
