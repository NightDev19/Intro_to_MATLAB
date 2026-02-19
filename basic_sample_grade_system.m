clc;
clear;

%% STUDENT MATRIX
students = ["Alice";
            "Bob";
            "Charlie"];

%% SUBJECT MATRIX
subjects = ["Math", "Science", "English"];

%% GRADE MATRIX
grades = [90 85 88;
          78 92 80;
          85 87 91];

%% CREATE TABLE
GradeTable = array2table(grades, ...
    'VariableNames', subjects);

GradeTable.Student = students;          % Add student column
GradeTable = movevars(GradeTable, 'Student', 'Before', 1);

%% DISPLAY
disp(GradeTable)

%% EXPORT TO EXCEL
filename = 'StudentGrades.xlsx';
writetable(GradeTable, filename);

disp('Export completed successfully.')
