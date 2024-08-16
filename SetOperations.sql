-- Set operations in SQL are used to combine or manipulate the result sets of multiple SELECT queries.
-- Useful for combining and analysing related data from different queries or tables.

-- There are four primary set operations in SQL:
-- Union
SELECT col_name FROM tableA
UNION
SELECT col_name FROM tableB;
--  e.g.-select * from student union select * from student;

-- Union All
SELECT col_name FROM tableA
UNION ALL
SELECT col_name FROM tableB;
-- e.g.-select * from student union all select * from student;

--  Except
SELECT col_name FROM tableA
EXCEPT
SELECT col_name FROM tableB;
-- e.g.-select * from student except select * from student;

-- Intersect
SELECT col_name FROM tableA
INTERSECT
SELECT col_name FROM tableB;
-- e.g.-select * from student intersect select * from student;
