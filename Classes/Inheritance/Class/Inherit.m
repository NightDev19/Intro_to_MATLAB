classdef Inherit < Parent
    properties
        CircleRadius
    end

    methods
        % Constructor
        function obj = Inherit(ShapeWidth, ShapeHeight, CircleRadius)
            % Call parent constructor
            % Super Constructor by Parent Class
            obj@Parent(ShapeWidth, ShapeHeight);

            if nargin == 3 % Validations for the Inherit Constrictor
                obj.CircleRadius = CircleRadius;
            end
        end

        % Circle area method
        function CircleArea = ShapeArea(obj)
            CircleArea = pi * obj.CircleRadius^2;
        end
    end
end
