# SQL Functions

- Functions are built-in SQl code used to perform operations on data.
- Can be categorized into:
  - Single Row Functions
    - Numeric Functions
    - String Functions
    - Date & Time Functions
    - NULL Functions
    - CASE Functions
  - Aggregate Functions
  - Multi Row Functions
    - Window Functions

---

- ## Single-Row Functions
  - ### Numeric Functions

    | Function   | Description                           | Syntax                       | Example                     |
    | ---------- | ------------------------------------- | ---------------------------- | --------------------------- |
    | `MOD`      | Returns remainder of division         | `MOD(a, b)`                  | `SELECT MOD(11,4);`         |
    | `POWER`    | Raises a number to a power            | `POWER(base, exponent)`      | `SELECT POWER(2,3);`        |
    | `ROUND`    | Rounds number to specified decimals   | `ROUND(number, decimals)`    | `SELECT ROUND(15.193,1);`   |
    | `SQRT`     | Returns square root                   | `SQRT(number)`               | `SELECT SQRT(144);`         |
    | `TRUNCATE` | Removes decimals without rounding     | `TRUNCATE(number, decimals)` | `SELECT TRUNCATE(15.75,1);` |
    | `ABS`      | Returns absolute (non-negative) value | `ABS(number)`                | `SELECT ABS(-25);`          |

    ***

  - ### String Functions

    | Function           | Description                                           | Syntax                                                 | Example                                     |
    | ------------------ | ----------------------------------------------------- | ------------------------------------------------------ | ------------------------------------------- |
    | `CHAR`             | Returns character from ASCII values                   | `CHAR(n1, n2, ...)`                                    | `SELECT CHAR(72,97,114,114,121);`           |
    | `CONCAT`           | Concatenates strings                                  | `CONCAT(str1, str2, ...)`                              | `SELECT CONCAT('Good',' Day');`             |
    | `LOWER/LCASE`      | Converts string to lowercase                          | `LOWER(string)`                                        | `SELECT LOWER('ABCXYZ');`                   |
    | `UPPER/UCASE`      | Converts string to uppercase                          | `UPPER(string)`                                        | `SELECT UPPER('abcxyz');`                   |
    | `LENGTH/LEN`       | Returns length in bytes                               | `LENGTH(string)`                                       | `SELECT LENGTH('String');`                  |
    | `SUBSTR/SUBSTRING` | Extracts substring                                    | `SUBSTR(string, start, length)`                        | `SELECT SUBSTR('Database',1,4);`            |
    | `TRIM`             | Removes leading/trailing characters                   | `TRIM([LEADING \| TRAILING \| BOTH] char FROM string)` | `SELECT TRIM('  school  ');`                |
    | `INSTR`            | Finds position of substring                           | `INSTR(string, substring)`                             | `SELECT INSTR('Database','base');`          |
    | `REPLACE`          | Replaces occurrences of a substring within a string   | `REPLACE(string, old_substring, new_substring)`        | `SELECT REPLACE('database','data','info');` |
    | `LEFT`             | Returns specified number of characters from the left  | `LEFT(string, number_of_characters)`                   | `SELECT LEFT('Database',4);`                |
    | `RIGHT`            | Returns specified number of characters from the right | `RIGHT(string, number_of_characters)`                  | `SELECT RIGHT('Database',4);`               |

    ***

  - ### Date & Time Functions

    | Function            | Description                                              | Syntax                                     | Example                                             |
    | ------------------- | -------------------------------------------------------- | ------------------------------------------ | --------------------------------------------------- |
    | `CURDATE/GETDATE()` | Returns current date                                     | `CURDATE()`                                | `SELECT CURDATE();`                                 |
    | `NOW`               | Returns current date & time                              | `NOW()`                                    | `SELECT NOW();`                                     |
    | `SYSDATE`           | Returns system date & time                               | `SYSDATE()`                                | `SELECT SYSDATE();`                                 |
    | `DATE`              | Extracts date from datetime                              | `DATE(datetime)`                           | `SELECT DATE('2021-12-10 12:00:00');`               |
    | `DAY`               | Returns day from date                                    | `DAY(date)`                                | `SELECT DAY(CURDATE());`                            |
    | `MONTH`             | Returns month from date                                  | `MONTH(date)`                              | `SELECT MONTH(CURDATE());`                          |
    | `YEAR`              | Returns year from date                                   | `YEAR(date)`                               | `SELECT YEAR(CURDATE());`                           |
    | `DATEPART`          | Returns specific part of a date (year, month, day, etc.) | `DATEPART(part, date)`                     | `SELECT DATEPART(YEAR, '2024-02-15');`              |
    | `DATENAME`          | Returns specified part of date as string                 | `DATENAME(part, date)`                     | `SELECT DATENAME(MONTH, '2024-02-15');`             |
    | `DATETRUNC`         | Truncates date to specified precision (SQL Server 2022+) | `DATETRUNC(part, date)`                    | `SELECT DATETRUNC(MONTH, '2024-02-15');`            |
    | `EOMONTH`           | Returns last day of month                                | `EOMONTH(date [, offset])`                 | `SELECT EOMONTH('2024-02-15');`                     |
    | `FORMAT`            | Formats date/time value as specified string              | `FORMAT(value, format_string)`             | `SELECT FORMAT('2024-02-15', 'yyyy-MM-dd');`        |
    | `CONVERT`           | Converts data type with optional formatting              | `CONVERT(data_type, expression [, style])` | `SELECT CONVERT(VARCHAR, '2024-02-15', 23);`        |
    | `CAST`              | Converts expression to specified data type               | `CAST(expression AS data_type)`            | `SELECT CAST('2024-02-15' AS DATE);`                |
    | `DATEDIFF`          | Returns difference between two dates                     | `DATEDIFF(part, start_date, end_date)`     | `SELECT DATEDIFF(DAY, '2024-01-01', '2024-02-15');` |
    | `DATEADD`           | Adds specified value to date                             | `DATEADD(part, value, date)`               | `SELECT DATEADD(DAY, 7, '2024-02-15');`             |
    | `ISDATE`            | Checks if expression is valid date                       | `ISDATE(expression)`                       | `SELECT ISDATE('2024-02-15');`                      |

    ***

  - ### NULL Functions

    | Function      | Description                                     | Syntax                                  | Example                                                 |
    | ------------- | ----------------------------------------------- | --------------------------------------- | ------------------------------------------------------- |
    | `ISNULL`      | Replaces NULL with specified value (SQL Server) | `ISNULL(expression, replacement_value)` | `SELECT ISNULL(NULL, 'N/A');`                           |
    | `COALESCE`    | Returns first non-NULL value in list            | `COALESCE(value1, value2, ...)`         | `SELECT COALESCE(NULL, NULL, 'Default');`               |
    | `NULLIF`      | Returns NULL if two expressions are equal       | `NULLIF(expression1, expression2)`      | `SELECT NULLIF(10, 10);`                                |
    | `IS NULL`     | Checks if value is NULL                         | `column_name IS NULL`                   | `SELECT * FROM employees WHERE manager_id IS NULL;`     |
    | `IS NOT NULL` | Checks if value is not NULL                     | `column_name IS NOT NULL`               | `SELECT * FROM employees WHERE manager_id IS NOT NULL;` |

  - ### CASE Functions

    | Function | Description                                              | Syntax                                                         | Example                                                                                                                                                                                      |
    | -------- | -------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
    | `CASE`   | Performs conditional logic (if-then-else) within a query | `CASE WHEN condition THEN result [WHEN ...] [ELSE result] END` | `SELECT CASE WHEN country='INDIA' THEN 'IN' ELSE 'n/a' END FROM employees;` => Full Form <br/><br/>`SELECT CASE country WHEN 'INDIA' THEN 'IN' ELSE 'n/a' END FROM employees;` => Quick Form |

- ## Aggregate Functions

  | Function | Description           | Syntax          | Example                              |
  | -------- | --------------------- | --------------- | ------------------------------------ |
  | `SUM`    | Returns total sum     | `SUM(column)`   | `SELECT SUM(salary) FROM employees;` |
  | `AVG`    | Returns average value | `AVG(column)`   | `SELECT AVG(salary) FROM employees;` |
  | `COUNT`  | Counts rows           | `COUNT(column)` | `SELECT COUNT(id) FROM employees;`   |
  | `MAX`    | Returns maximum value | `MAX(column)`   | `SELECT MAX(salary) FROM employees;` |
  | `MIN`    | Returns minimum value | `MIN(column)`   | `SELECT MIN(salary) FROM employees;` |

- ## Multi-Row Functions
  - ### Windows Functions
    - ### Windows Aggregate functions

      | Function | Description                             | Syntax                                               | Example                                                       |
      | -------- | --------------------------------------- | ---------------------------------------------------- | ------------------------------------------------------------- |
      | `SUM`    | Returns cumulative or partitioned total | `SUM(column) OVER (PARTITION BY col ORDER BY col)`   | `SELECT SUM(salary) OVER      (ORDER BY id) FROM employees;`  |
      | `AVG`    | Returns running or partitioned average  | `AVG(column) OVER (PARTITION BY col ORDER BY col)`   | `SELECT AVG(salary) OVER      (ORDER BY id)  FROM employees;` |
      | `COUNT`  | Returns running or partitioned count    | `COUNT(column) OVER (PARTITION BY col ORDER BY col)` | `SELECT COUNT(id) OVER (ORDER       BY id)  FROM employees;`  |
      | `MIN`    | Returns running or partitioned minimum  | `MIN(column) OVER (PARTITION BY col ORDER BY col)`   | `SELECT MIN(salary) OVER      (ORDER BY id)  FROM employees;` |
      | `MAX`    | Returns running or partitioned maximum  | `MAX(column) OVER (PARTITION BY col ORDER BY col)`   | `SELECT MAX(salary) OVER      (ORDER BY id)  FROM employees;` |

    - ### Windows Ranking functions

      | Function       | Description                                                       | Syntax                                                   | Example                                                              |
      | -------------- | ----------------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------------------- |
      | `ROW_NUMBER`   | Assigns unique sequential number to each row (no ties)            | `ROW_NUMBER() OVER (PARTITION BY col ORDER BY col)`      | `SELECT ROW_NUMBER() OVER (ORDER BY salary DESC) FROM employees;`    |
      | `RANK`         | Assigns rank with gaps for ties                                   | `RANK() OVER (ORDER BY col)`                             | `SELECT RANK() OVER (ORDER BY salary DESC) FROM employees;`          |
      | `DENSE_RANK`   | Assigns rank without gaps for ties                                | `DENSE_RANK() OVER (ORDER BY col)`                       | `SELECT DENSE_RANK() OVER (ORDER BY salary DESC) FROM    employees;` |
      | `NTILE`        | Divides rows into specified number of ranked groups               | `NTILE(n) OVER (ORDER BY col)`                           | `SELECT NTILE(4) OVER (ORDER BY salary DESC)     FROM employees;`    |
      | `CUME_DIST`    | Returns cumulative distribution of a value within partition (0–1) | `CUME_DIST() OVER (PARTITION BY col ORDER BY col)    `   | `SELECT CUME_DIST() OVER (ORDER BY salary DESC) FROM employees;`     |
      | `PERCENT_RANK` | Returns relative rank of a row (0–1)                              | `PERCENT_RANK() OVER (PARTITION BY col ORDER BY col)   ` | `SELECT PERCENT_RANK() OVER (ORDER BY salary DESC) FROM employees;`  |

    - ### Windows Value functions

      | Function      | Description                               | Syntax                                                                                                                | Example                                                                                                                               |
      | ------------- | ----------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
      | `LAG`         | Returns value from previous row in window | `LAG(column, offset, default) OVER (PARTITION BY col ORDER BY col)`                                                   | `SELECT LAG(salary,1,0) OVER (ORDER BY id) FROM employees;`                                                                           |
      | `LEAD`        | Returns value from next row in window     | `LEAD(column, offset, default) OVER (PARTITION BY col ORDER BY col)`                                                  | `SELECT LEAD(salary,1,    0) OVER (ORDER BY id) FROM employees;`                                                                      |
      | `FIRST_VALUE` | Returns first value in the window frame   | `FIRST_VALUE(column) OVER (PARTITION BY col ORDER BY col)`                                                            | `SELECT FIRST_VALUE    (salary) OVER (ORDER BY salary DESC) FROM employees;`                                                          |
      | `LAST_VALUE`  | Returns last value in the window frame    | `LAST_VALUE(column) OVER (PARTITION BY col ORDER BY col ROWS BETWEEN UNBOUNDED    PRECEDING AND UNBOUNDED FOLLOWING)` | `SELECT LAST_VALUE(salary) OVER (ORDER BY salary ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)   FROM employees;`         |
      | `NTH_VALUE`   | Returns nth value in window frame         | `NTH_VALUE(column, n) OVER (PARTITION BY col ORDER BY col ROWS BETWEEN UNBOUNDED PRECEDING  AND UNBOUNDED FOLLOWING)` | `SELECT NTH_VALUE(salary,2) OVER (ORDER BY salary DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)     FROM employees;` |
