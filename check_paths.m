function e=check_paths(pa1,pa2)
mi=min(size(pa1,2),size(pa2,2));
px1=pa1(1,1:mi);
py1=pa1(2,1:mi);
pz1=pa1(3,1:mi);
px2=pa2(1,1:mi);
py2=pa2(2,1:mi);
pz2=pa2(3,1:mi);
e=sqrt((px1-px2).^2+(py1-py2).^2+(pz1-pz2).^2);
e=min(e)<5;










