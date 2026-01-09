clear;clc;
circle = Poly(3);
getArea = circle.getArea();

rect = Shape(5 ,10);
rectArea = rect.getArea();

fprintf("Circle Area: %.2f\n", getArea);
fprintf("Rectangle Area: %d\n", rectArea);
