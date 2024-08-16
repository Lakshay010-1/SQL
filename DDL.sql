--  DDL (Data Definition Language) : Used to create, alter, and delete database objects
-- like tables, indexes, etc. (CREATE, DROP, ALTER, RENAME, TRUNCATE)


-- -- -- -- --  Create -- -- -- -- 
-- Create Database
CREATE DATABASE db_name;
CREATE DATABASE IF NOT EXISTS db_name;
-- e.g.- CREATE DATABASE IF NOT EXISTS school;

-- Create table command (create a table in the selected database)
CREATE TABLE table_name(
    -- schema
    column_name1 DataType1 Constraint1,
    column_name2 DataType2 Constraint2,
    column_name3 DataType3 Constraint3
);
/*
e.g.-
  (i).CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
    );

 (ii).CREATE TABLE teacher(
	id INT,
    name VARCHAR(50),
    stu_id INT,
    age INT CHECK (age>=25),  						-- Approach-1.to use check constraint
    score INT,
    CONSTRAINT score_check CHECK (score>=100),		-- Approach-2.to use check constraint
    salary INT DEFAULT 50000,
    PRIMARY KEY (id,name),
    FOREIGN KEY (stu_id) REFERENCES student (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
    );
*/

-- -- -- -- --  ALTER -- -- -- -- 
-- Add Column
Alter Table <table_name> Add <new_column>;
--e.g.- ALTER TABLE student ADD COLUMN marks INT DEFAULT 20;

-- Rename Column
Alter Table <table_name> RENAME COLUMN <old_column_name> TO <new_column_name>;
--e.g.-ALTER TABLE student RENAME COLUMN age TO stu_age;	

-- Delete Column
Alter Table <table_name> DROP COLUMN <column_name>;
--e.g.-ALTER TABLE student DROP COLUMN stu_age;	

--  Change Column
Alter Table Change <old_column_name> <new_column_name><data_type>;
--e.g.-ALTER TABLE student CHANGE COLUMN marks stu_marks FLOAT DEFAULT 5;

--   Modify Column
Alter Table <table_name>Modify <old_column_name> [<new_data_type><size>];
--e.g.-ALTER TABLE student MODIFY stu_marks DOUBLE DEFAULT 0;


-- -- -- -- --  DROP -- -- -- -- 

-- Delete Database
DROP DATABASE db_name;
DROP DATABASE IF EXISTS db_name;
DROP TABLE IF EXISTS table_name;
DROP TRIGGER IF EXISTS trigger_name
-- e.g.- DROP DATABASE IF EXISTS school;
-- e.g.- DROP TRIGGER IF EXISTS trigger1;

-- Drop VS Truncate command
TRUNCATE db_name;    -- {drop command delete the table/database while truncate command only erase the data from the table/database.}
TRUNCATE table_name;
-- e.g.- TRUNCATE school;

-- Accessing Database (Show command)
SHOW DATABASES;
SHOW TABLES;

-- Use command is used to select a specific database to work with before executing any SQL statements
    USE db_name;
-- e.g.-USE school;
