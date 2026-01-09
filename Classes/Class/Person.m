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
        % Functions for the actions or methods of the Class itself
        function greet(self)
            fprintf('Hello my name is %s, and my age is %d \n', self.Name , self.Age)
        end
    end
end