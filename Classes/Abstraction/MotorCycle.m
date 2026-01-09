classdef MotorCycle < Vehicle
    properties
        EngineType
    end

    methods
        
        function obj = MotorCycle(speed, engineType)
            if nargin > 0
                obj.Speed = speed;
                obj.EngineType = engineType;
            end
        end

      
        function go(obj)
            fprintf('Motorcycle is On. Engine: %s\n', obj.EngineType);
        end

        function stop(obj)
            disp('Motorcycle is Stopped.');
        end
    end
end
