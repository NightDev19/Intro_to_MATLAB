classdef Shape
    %SHAPE Summary of this class goes here
    %   Detailed explanation goes here

    properties
        Width = 0
        Height = 0
    end

    methods
        function obj = Shape(width, height)
            if nargin == 2
                obj.Width = width;
                obj.Height = height;
            end
        end


        function area = getArea(obj)
            area = obj.Width * obj.Height;
        end

    end
end