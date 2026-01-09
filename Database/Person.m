classdef Person
    properties
        LastName
        FirstName
        Address
        Age
    end
    
    properties (Access = private)
        conn
    end
    
    methods
        % Constructor
        function obj = Person(conn, lname, fname, addr, age)
            if nargin > 0
                obj.conn = conn;
                obj.LastName = lname;
                obj.FirstName = fname;
                obj.Address = addr;
                obj.Age = age;
            end
        end
        
        % Save single person to database
        function save(obj)
            sql = sprintf(['INSERT INTO Person(lastname, firstname, address, age) ' ...
                           'VALUES(''%s'', ''%s'', ''%s'', %d)'], ...
                           obj.LastName, obj.FirstName, obj.Address, obj.Age);
            exec(obj.conn, sql);
        end
        
        % Fetch all rows from database as a table
        function tbl = fetchAll(obj)
            data = fetch(obj.conn, 'SELECT * FROM Person');

            % Handle empty result
            if isempty(data)
                tbl = table([], [], [], [], [], 'VariableNames', ...
                    {'id','lastname','firstname','address','age'});
                return
            end
            
            % If fetch returns a table already
            if istable(data) 
                tbl = data;
                return
            end

            % If nested cell array
            if iscell(data) && iscell(data{1})
                data = vertcat(data{:});
            end

            % Convert to table
            if iscell(data) && size(data,2) == 5
                tbl = cell2table(data, 'VariableNames', ...
                    {'id','lastname','firstname','address','age'});
            elseif isnumeric(data) && size(data,2) == 5
                tbl = array2table(data, 'VariableNames', ...
                    {'id','lastname','firstname','address','age'});
            else
                error('Unsupported fetch output type or format.');
            end
        end
    end
    
    methods (Static)
        % Save multiple Person objects at once
        function saveAll(objs)
            for k = 1:numel(objs)
                objs{k}.save();
            end
        end
    end
end
