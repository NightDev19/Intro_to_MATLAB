classdef Person
    properties
        Name 
        Age
    end
    methods
        % Constructor
        function self = Person(name, age)
            if nargin > 0
                self.Name = name;
                self.Age = age;
            end
        end
        function greet(self)
            fprintf('Hello my name is %s, and my age is %d \n', self.Name , self.Age)
        end
    end
end