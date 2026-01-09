classdef Parent
    properties
        Width
        Height
    end

    methods
        function obj = Parent(ShapeWidth , ShapeHeight)
            obj.Width = ShapeWidth;
            obj.Height = ShapeHeight;
        end
        function area = ShapesArea(obj)
            area = obj.Height * obj.Width;
        end
    end
end