clear; clc;

dbfile = 'tutorial.db';

% Open or create database
if isfile(dbfile)
    conn = sqlite(dbfile, 'connect');  
else
    conn = sqlite(dbfile, 'create');   
end

% Create table if it doesn't exist
sqlquery = ['CREATE TABLE IF NOT EXISTS Person(' ...
            'id INTEGER PRIMARY KEY AUTOINCREMENT, ' ...
            'lastname VARCHAR(250), ' ...
            'firstname VARCHAR(250), ' ...
            'address VARCHAR(300), ' ...
            'age INT)'];
exec(conn, sqlquery);

% ---- Create a list of people (cell array) ----
peopleData = { ...
    'Doe',   'John', '123 Main St', 30; 
    'Smith', 'Jane', '456 Elm St', 25;
    'Brown', 'Mike', '789 Oak St', 40;
    'Lee',   'Anna', '101 Pine St', 28
};

% ---- Convert list into Person objects ----
people = cell(size(peopleData,1),1);  
for i = 1:size(peopleData,1)
    people{i} = Person(conn, peopleData{i,1}, peopleData{i,2}, ...
                           peopleData{i,3}, peopleData{i,4});
end

% ---- Save all people to database ----
% Person.saveAll(people);

% ---- Fetch all rows as table ----
dummy = Person(conn, '', '', '', 0);
personTable = dummy.fetchAll();

% Close connection
close(conn);

% ---- Convert string columns to cellstr for uitable ----
vars = personTable.Properties.VariableNames;
for k = 1:numel(vars)
    if isstring(personTable.(vars{k}))
        personTable.(vars{k}) = cellstr(personTable.(vars{k}));
    end
end

% ---- Display UI table ----
f = figure('Name','Person Table','NumberTitle','off','Position',[100 100 600 200]);
t = uitable(f, ...
            'Data', table2cell(personTable), ...
            'ColumnName', personTable.Properties.VariableNames, ...
            'Position', [20 20 560 160]);
