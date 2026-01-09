classdef Encaps
    % Props
    properties(Access = private)
        Data
    end

    methods
        % Constructor
        function obj = Encaps(data)
            obj.Data = data;
        end
        % Methods
        function outputArg = method1(obj)
            outputArg = obj.Data;
        end

    end
end