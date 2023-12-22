%one path planning
clc,clear,close all
forbid=set_up;
best_er=1000;
%%
flag=1;
best_path1=[];
best_path2=[];
best_pa1=[1  1 50; 1 25 50;1  1 1;];
best_pa2=[1 25 50;50 25  1;1 25 1;];
for tr=1:1e4
    [path1,pa1]=find_path4(flag,best_pa1);
    [path2,pa2]=find_path4(flag,best_pa2);    
    [e1_1,e1_2]=check_path(forbid,pa1);
    [e2_1,e2_2]=check_path(forbid,pa2);
    e3=check_paths(pa1,pa2);
    if e1_1 == 0 & e2_1 == 0 & e1_2 + e2_2 < best_er & e3 == 0
        best_er = e1_2 + e2_2;
        best_path1 = path1;
        best_path2 = path2;
        best_pa1 = pa1;
        best_pa2 = pa2;        
    else
        flag = -flag;
    end
    
    res1(tr) = best_er;
    res2(tr) = size(best_path1,2);    
end
% show
plot3(best_pa1(1,:),best_pa1(2,:),best_pa1(3,:),'r')
scatter3(best_path1(1,:),best_path1(2,:),best_path1(3,:),'filled')
plot3(best_pa2(1,:),best_pa2(2,:),best_pa2(3,:),'k')
scatter3(best_path2(1,:),best_path2(2,:),best_path2(3,:),'filled')
% 
% figure,plot(res1)
% figure,plot(res2)




