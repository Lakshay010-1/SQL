-- Data Manipulation Language (DML) in SQL encompasses commands that manipulate data within a database. 
-- DML (Data Manipulation Language): Used to modify the database. (INSERT,UPDATE, DELETE) ensuring the accuracy and currency of your data.


-- Insert command
Insert into table_name (column-list) Values (<value1>,<value2>...);
/*
e.g.-
     INSERT INTO student(id,name,age) VALUES(1,"RAM",15),(2,"SHYAM",15),(3,"KRISHNA",10);       -- For multiple input values
     INSERT INTO student VALUES (4,"BALRAM",12);                                                -- For Single input Value
     Insert into <table_name> (<col_name>) Values ('2021-12-10');                               -- Inserting Date
     -- Inserting NULL values
     Inset into <table-name> (col1, col2,col3) Values (NULL,NULL,NULL);                         
     Inset into <table-name> (col1, col2,col3) Values (val1,val2,NULL);                         
     Inset into <table-name> (col1, col2) Values (val1,val2);      -- mention the column name then enter value ,other col val will automatically will be NULL.                   
     
*/

-- Update Command
Update <table_name> SET <col1> = <new_value>, <col2> = <new_value> Where <condition>;
-- e.g.- UPDATE student SET age=25 WHERE name="KRISHNA";

-- Delete Command
DELETE FROM table_name WHERE condition;
-- e.g.- DELETE FROM student WHERE age<15;
