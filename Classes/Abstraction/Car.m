classdef Car < Vehicle
    properties
        NumberOfDoors
    end

    methods
       
        function obj = Car(speed, doors)
            if nargin > 0
                obj.Speed = speed;
                obj.NumberOfDoors = doors;
            end
        end


        function go(obj)
            fprintf('Car is driving. Doors: %d\n', obj.NumberOfDoors);
        end

        function stop(obj)
            disp('Car has stopped.');
        end
    end
end
