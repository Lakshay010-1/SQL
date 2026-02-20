# Windows Functions

- A window function performs a calculation across a set of rows related to the current row, while preserving all rows in the result set.
- Unlike GROUP BY, window functions (OVER()) clause do not collapse rows.
- Can only be used inside SELECT and ORDER BY and also GROUP BY with some limitations.
- #### Syntax:

  ```sql
    function_name() OVER (
    PARTITION BY column
    ORDER BY column
    ROWS or RANGE frame_clause
    )
  ```

- ## Execution Behavior
  1. FROM
  2. WHERE
  3. GROUP BY
  4. HAVING
  5. Window functions
  6. SELECT
  7. ORDER BY

- ## Window Function Clauses
  - ### OVER Clause
    - The OVER clause is what turns a normal function into a window function.
    - It defines the window of rows over which a function operates.

  - ### PARTITION BY Clause
    - PARTITION BY is used inside the OVER() clause of a window function.
    - It divides the result set into logical groups (partitions), and the window function is applied separately within each partition.

  - ### ORDER BY Clause
    - ORDER BY is used to sort the result set of a query.
    - It arranges rows in ascending (ASC) or descending (DESC) order based on one or more columns.

  - ### Frame Clause
    - The frame clause defines the exact set of rows within a partition that a window function should use for calculation.
    - It is part of the OVER() clause and works together with:
      - PARTITION BY
      - ORDER BY
    - Without a frame clause, SQL uses a default frame.

- ## Types:
  - ### Windows Aggregate functions

    | Function | Description                             | Syntax                                               | Example                                                  |
    | -------- | --------------------------------------- | ---------------------------------------------------- | -------------------------------------------------------- |
    | `SUM`    | Returns cumulative or partitioned total | `SUM(column) OVER (PARTITION BY col ORDER BY col)`   | `SELECT SUM(salary) OVER (ORDER BY id) FROM employees;`  |
    | `AVG`    | Returns running or partitioned average  | `AVG(column) OVER (PARTITION BY col ORDER BY col)`   | `SELECT AVG(salary) OVER (ORDER BY id)  FROM employees;` |
    | `COUNT`  | Returns running or partitioned count    | `COUNT(column) OVER (PARTITION BY col ORDER BY col)` | `SELECT COUNT(id) OVER (ORDER BY id)  FROM employees;`   |
    | `MIN`    | Returns running or partitioned minimum  | `MIN(column) OVER (PARTITION BY col ORDER BY col)`   | `SELECT MIN(salary) OVER (ORDER BY id)  FROM employees;` |
    | `MAX`    | Returns running or partitioned maximum  | `MAX(column) OVER (PARTITION BY col ORDER BY col)`   | `SELECT MAX(salary) OVER (ORDER BY id)  FROM employees;` |

  - ### Windows Ranking functions

    | Function       | Description                                                       | Syntax                                                | Example                                                              |
    | -------------- | ----------------------------------------------------------------- | ----------------------------------------------------- | -------------------------------------------------------------------- |
    | `ROW_NUMBER`   | Assigns unique sequential number to each row (no ties)            | `ROW_NUMBER() OVER (PARTITION BY col ORDER BY col)`   | `SELECT ROW_NUMBER() OVER (ORDER BY salary DESC) FROM employees;`    |
    | `RANK`         | Assigns rank with gaps for ties                                   | `RANK() OVER (ORDER BY col)`                          | `SELECT RANK() OVER (ORDER BY salary DESC) FROM employees;`          |
    | `DENSE_RANK`   | Assigns rank without gaps for ties                                | `DENSE_RANK() OVER (ORDER BY col)`                    | `SELECT DENSE_RANK() OVER (ORDER BY salary DESC) FROM    employees;` |
    | `NTILE`        | Divides rows into specified number of ranked groups               | `NTILE(n) OVER (ORDER BY col)`                        | `SELECT NTILE(4) OVER (ORDER BY salary DESC)     FROM employees;`    |
    | `CUME_DIST`    | Returns cumulative distribution of a value within partition (0–1) | `CUME_DIST() OVER (PARTITION BY col ORDER BY col)`    | `SELECT CUME_DIST() OVER (ORDER BY salary DESC) FROM employees;`     |
    | `PERCENT_RANK` | Returns relative rank of a row (0–1)                              | `PERCENT_RANK() OVER (PARTITION BY col ORDER BY col)` | `SELECT PERCENT_RANK() OVER (ORDER BY salary DESC) FROM employees;`  |

  - ### Windows Value functions

    | Function      | Description                               | Syntax                                                                                                                | Example                                                                                                                               |
    | ------------- | ----------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
    | `LAG`         | Returns value from previous row in window | `LAG(column, offset, default) OVER (PARTITION BY col ORDER BY col)`                                                   | `SELECT LAG(salary,1,0) OVER (ORDER BY id) FROM employees;`                                                                           |
    | `LEAD`        | Returns value from next row in window     | `LEAD(column, offset, default) OVER (PARTITION BY col ORDER BY col)`                                                  | `SELECT LEAD(salary,1,    0) OVER (ORDER BY id) FROM employees;`                                                                      |
    | `FIRST_VALUE` | Returns first value in the window frame   | `FIRST_VALUE(column) OVER (PARTITION BY col ORDER BY col)`                                                            | `SELECT FIRST_VALUE    (salary) OVER (ORDER BY salary DESC) FROM employees;`                                                          |
    | `LAST_VALUE`  | Returns last value in the window frame    | `LAST_VALUE(column) OVER (PARTITION BY col ORDER BY col ROWS BETWEEN UNBOUNDED    PRECEDING AND UNBOUNDED FOLLOWING)` | `SELECT LAST_VALUE(salary) OVER (ORDER BY salary ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)   FROM employees;`         |
    | `NTH_VALUE`   | Returns nth value in window frame         | `NTH_VALUE(column, n) OVER (PARTITION BY col ORDER BY col ROWS BETWEEN UNBOUNDED PRECEDING  AND UNBOUNDED FOLLOWING)` | `SELECT NTH_VALUE(salary,2) OVER (ORDER BY salary DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)     FROM employees;` |
