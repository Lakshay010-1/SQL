-- Sub-Query(nested/inner queries)
-- allow you to use the result of one query (the inner query) as the input for another query (the outer query).They are a way to break down complex tasks into smaller, manageable steps.
-- Subqueries are often used to retrieve data that will be used for filtering, comparison, or calculation within the context of a larger query.

select name,id from student where id in(select id from student where id%2=1);	-- where example
select MAX(stu_marks) from (select * from student where monitor=1) as temp;		-- from example
select (select AVG(stu_marks) from student) ,name from student;					-- select example

--  VIEW
CREATE VIEW v1 as select id, name from student;
select * from v1;
drop view v1;
 
--  INDEX
CREATE INDEX index_name ON table_name (column1, column2, ...);
DROP INDEX index_name;
