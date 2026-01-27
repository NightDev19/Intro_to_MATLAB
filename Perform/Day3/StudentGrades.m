classdef StudentGrades
    properties
        names
        grades
    end

    methods
        % Constructor
        function obj = StudentGrades(names, grades)
            obj.names = names;
            obj.grades = grades;
        end

        % Compute statistics
        function stats = computeStats(obj)
            stats.average = mean(obj.grades);
            stats.highest  = max(obj.grades);
            stats.lowest   = min(obj.grades);

            fprintf('Average: %.2f | Highest: %.2f | Lowest: %.2f\n', ...
                    stats.average, stats.highest, stats.lowest);
        end

        % Plot grades
        function plotGrades(obj)
            figure
            bar(obj.grades)
            grid on
            xlabel('Student')
            ylabel('Grade')
            title('Student Grades')
        
            set(gca, 'XTick', 1:numel(obj.names))
            set(gca, 'XTickLabel', obj.names)
        end

    end
end
