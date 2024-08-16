-- Joins { Join clause is used to combine or merge rows from two or more tables based on a related attribute }
-- Used to retrieve and relate data from different tables based on their relationships.
-- (i).Self Join
-- (ii).Cross Join
-- (iii).Inner Join
-- (vi). Outer Join(Left Join, Right Join, Full Join,Exclusive(Left,Right,Full))


--(i).  Self Join [table is joined with itself]
SELECT column_name FROM tableA T1, tableA T2 WHERE condition;
/* 
e.g. -
    select s1.name as monitor,s2.name from student as s1 join student as s2
    on s1.id=s2.monitor;
*/

--(ii). Cross Join
SELECT column_name(or *) FROM table1
CROSS JOIN 
table2;
/*
e.g.-
    SELECT Students.StudentName, Courses.CourseName FROM Students
    CROSS JOIN 
    Courses;

*/


--(iii). INNER JOIN  [It returns all rows from multiple tables where the join condition is satisfied. It is the most common type of join.]
SELECT * FROM tableA 
INNER JOIN tableB
on tableA.colCX=tableB.colY;
/*
 e.g. -
    SELECT * FROM student 
    INNER JOIN course 
    on student.id=course.id;
*/


--(vi). Outer Join {left, right, full}

-- Left Join    [It returns all rows from the left-hand table specified in the ON condition and only those rows from the other table where 
--               the join condition is fulfilled.]
SELECT columns FROM table1 LEFT [OUTER] JOIN table2 ON table1.column = table2.column;
/* 
e.g. -
    SELECT * FROM student 
    LEFT JOIN course 
    on student.id=course.id;
*/


-- Right Join   [It returns all rows from the RIGHT-hand table specified in the ON condition and only those rows from the other table where the
--               join condition is satisfied]
SELECT columns FROM table1 RIGHT [OUTER] JOIN table2 ON table1.column = table2.column;
/* 
e.g. -
    SELECT * FROM student 
    RIGHT JOIN course 
    on student.id=course.id;
*/


-- Full Join    [It combines the results of both left and right outer joins]
SELECT column_name FROM table1 FULL OUTER JOIN table2 ON table1.column_name = table2.column_name WHERE condition;
/* 
e.g. -
    SELECT * FROM student 
    LEFT JOIN course 
    ON student.id=course.id
    UNION
    SELECT * FROM student 
    RIGHT JOIN course 
    ON student.id=course.id;
*/


-- Left Exclusive Join
SELECT * FROM table1 LEFT JOIN table2 ON table1.col=table2.col WHERE table2.col IS NULL;
/* 
e.g. -
    SELECT * FROM student 
    LEFT JOIN course 
    on student.id=course.id
    WHERE course.id IS NULL;
*/

-- Right Exclusive Join
SELECT * FROM table1 RIGHT JOIN table2 ON table1.col=table2.col WHERE table1.col IS NULL;
/* 
e.g. -
    SELECT * FROM student 
    RIGHT JOIN course 
    on student.id=course.id
    WHERE student.id IS NULL;
*/

--  Full Exclusive Join
SELECT * FROM table1 LEFT JOIN table2 ON table1.col=table2.col WHERE table2.col IS NULL 
UNION
SELECT * FROM table1 RIGHT JOIN table2 ON table1.col=table2.col WHERE table1.col IS NULL;
/* 
e.g. -
    SELECT * FROM student 
    LEFT JOIN course 
    on student.id=course.id
    WHERE course.id IS NULL
    UNION
    SELECT * FROM student 
    RIGHT JOIN course 
    on student.id=course.id
    WHERE student.id IS NULL;
*/

