# JOINS

- Used to combine rows from two or more tables.
- Based on a related column (usually a `PRIMARY KEY` ↔ `FOREIGN KEY` relationship).
- Enables relational data retrieval across multiple tables.
- JOINs combines tables `horizontally` (adds columns).

---

<br/>
<br/>

- # Types of Joins
  - ## 1. SELF JOIN
    - A table joined with itself.
    - Requires table aliases to differentiate instances.

    - ### Syntax

      ```sql
      SELECT columns
      FROM table_name AS t1
      JOIN table_name AS t2
      ON t1.column = t2.column;
      ```

    - ### Example

      ```sql
      SELECT s1.name AS monitor, s2.name
      FROM student AS s1
      JOIN student AS s2
      ON s1.id = s2.monitor;
      ```

  - ## 2. CROSS JOIN
    - Returns Cartesian product.
    - Every row from table1 × every row from table2.
    - No join condition required.

    - ### Syntax

      ```sql
      SELECT columns
      FROM table1
      CROSS JOIN table2;
      ```

    - ### Example

      ```sql
      SELECT Students.StudentName, Courses.CourseName
      FROM Students
      CROSS JOIN Courses;
      ```

  - ## 3. INNER JOIN
    - Returns only rows with matching values in both tables.
    - Excludes unmatched rows.
    - ### Syntax

      ```sql
      SELECT columns
      FROM tableA
      INNER JOIN tableB
      ON tableA.column = tableB.column;
      ```

    - ### Example
      ```sql
      SELECT *
      FROM student
      INNER JOIN course
      ON student.id = course.id;
      ```

  - ## 4. LEFT JOIN (LEFT OUTER JOIN)
    - Returns all rows from the left table.
    - Returns matching rows from the right table.
    - Non-matching right-side rows return `NULL`.
    - ### Syntax

      ```sql
      SELECT columns
      FROM table1
      LEFT JOIN table2
      ON table1.column = table2.column;
      ```

    - ### Example
      ```sql
      SELECT *
      FROM student
      LEFT JOIN course
      ON student.id = course.id;
      ```

  - ## 5. LEFT EXCLUSIVE JOIN
    - Returns rows present only in the left table.
    - Excludes matched rows.
    - ### Syntax

      ```sql
      SELECT *
      FROM table1
      LEFT JOIN table2
      ON table1.column = table2.column
      WHERE table2.column IS NULL;
      ```

    - ### Example
      ```sql
      SELECT *
      FROM student
      LEFT JOIN course
      ON student.id = course.id
      WHERE course.id IS NULL;
      ```

  - ## 6. RIGHT JOIN (RIGHT OUTER JOIN)
    - Returns all rows from the right table.
    - Returns matching rows from the left table.
    - Non-matching left-side rows return `NULL`.
    - ### Syntax

      ```sql
      SELECT columns
      FROM table1
      RIGHT JOIN table2
      ON table1.column = table2.column;
      ```

    - ### Example
      ```sql
      SELECT *
      FROM student
      RIGHT JOIN course
      ON student.id = course.id;
      ```

  - ## 7. RIGHT EXCLUSIVE JOIN
    - Returns rows present only in the right table.
    - Excludes matched rows.
    - ### Syntax

      ```sql
      SELECT *
      FROM table1
      RIGHT JOIN table2
      ON table1.column = table2.column
      WHERE table1.column IS NULL;
      ```

    - ### Example
      ```sql
      SELECT *
      FROM student
      RIGHT JOIN course
      ON student.id = course.id
      WHERE student.id IS NULL;
      ```

  - ## 8. FULL OUTER JOIN
    - Combines results of LEFT and RIGHT JOIN.
    - Returns all matched and unmatched rows from both tables.
    - ### Syntax

      ```sql
      SELECT columns
      FROM table1
      FULL OUTER JOIN table2
      ON table1.column = table2.column;
      ```

    - ### Example (If FULL JOIN not supported, use UNION)

      ```sql
      SELECT *
      FROM student
      LEFT JOIN course
      ON student.id = course.id

      UNION

      SELECT *
      FROM student
      RIGHT JOIN course
      ON student.id = course.id;
      ```

  - ## 9. FULL EXCLUSIVE JOIN
    - Returns rows that do not match in either table.
    - Equivalent to symmetric difference.
    - ### Syntax

      ```sql
      SELECT *
      FROM table1
      LEFT JOIN table2
      ON table1.column = table2.column
      WHERE table2.column IS NULL

      UNION

      SELECT *
      FROM table1
      RIGHT JOIN table2
      ON table1.column = table2.column
      WHERE table1.column IS NULL;
      ```

    - ### Example

      ```sql
      SELECT *
      FROM student
      LEFT JOIN course
      ON student.id = course.id
      WHERE course.id IS NULL

      UNION

      SELECT *
      FROM student
      RIGHT JOIN course
      ON student.id = course.id
      WHERE student.id IS NULL;
      ```
