% Values 
x = -1:0.5:1;
y = 1:0.5:2;

[X,Y] = meshgrid(x,y);
Z = X.^2 + Y.^2;

figure(1)
plot(X,Y,'rd','MarkerSize',20,'MarkerFaceColor','b')
view(3)
title('Point Plot')

figure(2)
mesh(X,Y,Z)
title('Mesh Plot')

figure(3)
surf(X,Y,Z)
title('Surface Plot')
