--DQL is Used to retrieve data from databases. (SELECT)


-- Desc or Describe command
Desc <table_name>;

-- The SELECT statement is the foundation of DQL and allows us to extract specific columns from a table.
-- Arithmatic Operations
Select 5+8; --Addition
Select 5-8; --Subraction
Select 5*8; --Multiplication
Select 5/8; --Division
Select 5%8; --Modulus

-- Selecting All Data
SELECT * FROM student;

-- Selecting Particular Column
SELECT id, name FROM student;
-- WHERE clause { = : Equal, > : Greater than, < : Less than,
--               >= : Greater than or equal, <= : Less than or equal, <> : Not equal., AND, OR, NOT}
--Selecting Particular Rows
SELECT * FROM student WHERE (age>=12);
SELECT * FROM student WHERE (age>=12 AND id>2);

-- It will retrieve only distinct/unique data
SELECT DISTINCT age FROM student;

-- retrieve all the data of the selected column
Select ALL name from student;

--Column Aliases (It is used to give a temporary name to a table or a column in a table for the purpose of a particular query)
Select <column1>,<column2> AS <new_name> From <table_name>;

-- Condition Based on a Range
Select <co11>, <col2> From <table_name> Where <value1> Between <value2>;
-- e.g.-SELECT * FROM student WHERE age BETWEEN 12 AND 15;

-- Condition Based on a List
SELECT * FROM student WHERE name IN("RAM","BALRAM");
SELECT * FROM student WHERE name NOT IN("RAM","BALRAM");

-- Limit output
SELECT * FROM table_name LIMIT num;     -- {num is some integer.}

/*       --  Condition Based on Pattern Match ( LIKE ) -- '%' represents any # character, '_' represents one character space.       */
-- Finds any value that starts with "a":
    SELECT * FROM customers WHERE name LIKE 'a%';

-- Finds any value that ends with "n":
    SELECT * FROM customers WHERE name LIKE '%n';

-- Finds any value that contains "an":
    SELECT * FROM customers WHERE name LIKE '%an%';

-- Finds any value with "a" as the second character:
    SELECT * FROM customers WHERE name LIKE '_a%';

-- Searching NULL
    Select <column1>, <column2> From <table_name> Where <Val> IS NULL;

-- Order by Clause { It will return records in the ascending order of column1 and descending order of column2 }
Select * from <table_name> order by <column_name>;                      -- Default-Ascending order
Select * From <table_name> order by <column1> ASC, <column2> DESC;      -- order will be by column1 order but if two rows have same data in column1 then it will be order by column2
-- e.g.-SELECT * FROM student ORDER BY name ASC;
-- e.g.-SELECT * FROM student ORDER BY name DESC;

--Group by Clause { It allows you to group two or more columns and then you can perform aggregate function on them }
Select <column>, Count(*) from <table_name> group by <column>;
-- e.g.-SELECT age, AVG(id) FROM student GROUP BY age ORDER BY AVG(id) ASC; 

-- Having Clause
Select avg(<column>), sum(<column>) from <table_name> group by <column_name> having <condition_to_satisfy>;
-- e.g.-SELECT age, AVG(id) FROM student GROUP BY age HAVING age>10 ORDER BY AVG(id) ASC; 

