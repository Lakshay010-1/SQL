# CTAS (CREATE TABLE AS SELECT)

- Creates a new table using the result of a `SELECT` query.
- Copies data and structure (column definitions inferred from query).
- Does NOT copy constraints, indexes, or triggers (DB-dependent).

---

## Syntax

| Type                  | Syntax                                                    | Example                                                                     |
| --------------------- | --------------------------------------------------------- | --------------------------------------------------------------------------- |
| Basic CTAS            | `CREATE TABLE new_table AS SELECT ...;`                   | `CREATE TABLE emp_backup AS SELECT * FROM Employees;`                       |
| With Filter           | `CREATE TABLE new_table AS SELECT ... WHERE condition;`   | `CREATE TABLE high_salary AS SELECT * FROM Employees WHERE salary > 50000;` |
| With Specific Columns | `CREATE TABLE new_table AS SELECT col1, col2 FROM table;` | `CREATE TABLE emp_basic AS SELECT id, name FROM Employees;`                 |

---

## Key Points

| Feature            | Explanation                                 |
| ------------------ | ------------------------------------------- |
| Copies Data        | Yes                                         |
| Copies Structure   | Yes (based on SELECT output)                |
| Copies Constraints | No                                          |
| Copies Indexes     | No                                          |
| Performance        | Faster than creating + inserting separately |

---

## Use Cases

- Creating backup tables
- Creating summary/derived tables
- Staging tables for transformation
- Materializing complex query results
