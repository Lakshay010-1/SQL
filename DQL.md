# Data Query Language (DQL)

- Used to retrieve data from database tables.
- The core command of DQL is `SELECT`.

---

- ## Commands
  - ### 1. DESC / DESCRIBE
    - Displays the structure of a table (columns, data types, constraints).

    ```sql
    DESC table_name;
    ```

  - ### 2. SELECT
    - Used to retrieve data from one or more tables.
    - Supports filtering, sorting, grouping, and aggregation.

    - **Arithmetic Operations**

      ```sql
      SELECT 5 + 8;   -- Addition
      SELECT 5 - 8;   -- Subtraction
      SELECT 5 * 8;   -- Multiplication
      SELECT 5 / 8;   -- Division
      SELECT 5 % 8;   -- Modulus
      ```

    - **Basic Syntax**

      ```sql
      SELECT column1, column2
      FROM table_name;
      ```

    - **Select All Columns**

      ```sql
      SELECT * FROM student;
      ```

    - **Select Specific Columns**

      ```sql
      SELECT id, name FROM student;
      ```

    - ### WHERE Clause (Filtering Rows)
      - Used to filter records based on specified conditions.
      - Can be used with `SELECT`, `UPDATE`, and `DELETE`.
      - Conditions are evaluated row-by-row.
      - If omitted in `UPDATE` or `DELETE`, all rows are affected.

      - **Comparison Operators**
        - `=` → Equal
        - `>` → Greater than
        - `<` → Less than
        - `>=` → Greater than or equal
        - `<=` → Less than or equal
        - `<>` or `!=` → Not equal

      - **Logical Operators**
        - `AND`
        - `OR`
        - `NOT`

      - **Range Operator**
        - ### BETWEEN
          - Filters values within a range.
          - **Inclusive** of both boundary values.
          - Works with numbers, dates, and strings.

          ```sql
          SELECT * FROM student
          WHERE age BETWEEN 12 AND 15;
          ```

      - **Membership Operator**
        - ### IN and NOT IN
          - Matches a value against a list of specified values.
          - Cleaner alternative to multiple `OR` conditions.

          ```sql
          SELECT * FROM student
          WHERE name IN ("RAM", "BALRAM");
          ```

          ```sql
          SELECT * FROM student
          WHERE name NOT IN ("RAM", "BALRAM");
          ```

      - **Search Operator**
        - ### LIKE
          - Used for pattern matching with strings.
          - Wildcards:
            - `%` → Any number of characters
            - `_` → Exactly one character

          ```sql
          SELECT * FROM customers
          WHERE name LIKE 'a%';
          ```

      - **Other Conditional Operators**
        1. ### IS NULL
          - Used to check for `NULL` values.
          - `NULL` cannot be compared using `=`.

          ```sql
          WHERE column IS NULL;
          ```

        2. ### IS NOT NULL
          - Filters rows where the column contains a non-NULL value.

          ```sql
          SELECT * FROM student
          WHERE age IS NOT NULL;
          ```

    - ### DISTINCT
      - Used to return only unique (non-duplicate) values from a column.
      - Eliminates duplicate records in the result set.

      - #### Syntax

        ```sql
        SELECT DISTINCT column_name
        FROM table_name;
        ```

      - #### Example
        ```sql
        SELECT DISTINCT age FROM student;
        ```

    - ### ALL
      - Returns all records including duplicates.
      - Default behavior of `SELECT` (explicit use is optional).

      - #### Syntax

        ```sql
        SELECT ALL column_name
        FROM table_name;
        ```

      - #### Example
        ```sql
        SELECT ALL name FROM student;
        ```

    - ### Column Alias
      - Assigns a temporary name to a column or expression.
      - Improves readability of query output.
      - Valid only for the duration of the query.

      - #### Syntax

        ```sql
        SELECT column_name AS alias_name
        FROM table_name;
        ```

      - #### Example
        ```sql
        SELECT name AS student_name FROM student;
        ```

    - ### LIMIT or TOP
      - Returns first `n` number of rows in the result set.
      - Commonly used for pagination.
      - Key Differences:
        - **Placement**
          - `TOP` → After `SELECT`
          - `LIMIT` → End of query
        - **Database Support**
          - `TOP` → SQL Server
          - `LIMIT` → MySQL, PostgreSQL, SQLite

      - #### Syntax

        ```sql
        SELECT column_name
        FROM table_name
        LIMIT number;
        ```

      - #### Example
        ```sql
        SELECT * FROM student LIMIT 5;
        ```

    - ### ORDER BY
      - Sorts query results in ascending or descending order.
      - Default order is ascending (`ASC`).

      - #### Syntax

        ```sql
        SELECT column_name
        FROM table_name
        ORDER BY column_name ASC | DESC;
        ```

      - #### Example

        ```sql
        SELECT * FROM student
        ORDER BY name ASC;
        ```

        ```sql
        SELECT * FROM student
        ORDER BY age ASC, name DESC;
        ```

    - ### GROUP BY
      - Groups rows that have the same values in specified columns.
      - Used with aggregate functions such as `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`.

      - #### Syntax

        ```sql
        SELECT column_name, aggregate_function(column_name)
        FROM table_name
        GROUP BY column_name;
        ```

      - #### Example
        ```sql
        SELECT age, COUNT(*)
        FROM student
        GROUP BY age;
        ```

    - ### HAVING
      - Filters grouped results after aggregation.
      - Used with `GROUP BY`.
      - Unlike `WHERE`, it filters aggregated data.

      - #### Syntax

        ```sql
        SELECT column_name, aggregate_function(column_name)
        FROM table_name
        GROUP BY column_name
        HAVING condition;
        ```

      - #### Example
        ```sql
        SELECT age, COUNT(*)
        FROM student
        GROUP BY age
        HAVING COUNT(*) > 1;
        ```
