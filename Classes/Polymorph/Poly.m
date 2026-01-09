classdef Poly < Shape
    properties
        Radius = 0
    end

    methods
        function obj = Poly(rad)
            
            obj.Radius = rad;
        end

        function area = getArea(obj)
            area = pi * obj.Radius^2;
        end
    end
end