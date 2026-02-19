# Set Operations

- Used to combine or compare the result sets of multiple `SELECT` queries.
- Useful for analyzing related data from different tables or queries.
- Set operations combine query results `vertically` (adds rows).
- 1st query determines the column name in the result set.
- All participating queries must:
  - Have the same number of columns
  - Have compatible data types
  - Have columns in the same order

---

- ## Types of Set Operations
  - ### 1. UNION
    - Combines results of two queries.
    - Removes duplicate rows.
    - Returns distinct records.

    - #### Syntax

      ```sql
      SELECT column_name FROM tableA
      UNION
      SELECT column_name FROM tableB;
      ```

    - #### Example
      ```sql
      SELECT * FROM student
      UNION
      SELECT * FROM alumni;
      ```

  - ### 2. UNION ALL
    - Combines results of two queries.
    - Includes duplicate rows.
    - Faster than `UNION` (no duplicate elimination).

    - #### Syntax

      ```sql
      SELECT column_name FROM tableA
      UNION ALL
      SELECT column_name FROM tableB;
      ```

    - #### Example
      ```sql
      SELECT * FROM student
      UNION ALL
      SELECT * FROM alumni;
      ```

  - ### 3. EXCEPT
    - Returns rows present in the first query but not in the second.
    - Removes duplicates.
    - Equivalent to set difference (A − B).
    - Called `MINUS` in Oracle.

    - #### Syntax

      ```sql
      SELECT column_name FROM tableA
      EXCEPT
      SELECT column_name FROM tableB;
      ```

    - #### Example
      ```sql
      SELECT * FROM student
      EXCEPT
      SELECT * FROM alumni;
      ```

  - ### 4. INTERSECT
    - Returns only rows common to both queries.
    - Removes duplicates.
    - Equivalent to set intersection.

    - #### Syntax

      ```sql
      SELECT column_name FROM tableA
      INTERSECT
      SELECT column_name FROM tableB;
      ```

    - #### Example
      ```sql
      SELECT * FROM student
      INTERSECT
      SELECT * FROM alumni;
      ```
