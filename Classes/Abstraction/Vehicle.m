classdef (Abstract) Vehicle < handle
   
    properties
        Speed  
    end

    methods (Abstract)
        go(obj)    
        stop(obj) 
    end

    methods
      
        function displaySpeed(obj)
            fprintf('%s speed: %.1f km/h\n', class(obj), obj.Speed);
        end
    end
end
