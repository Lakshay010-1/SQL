# Temporary Tables

- A temporary table is a table that exists only for the duration of a session or transaction.
- Used to store intermediate results.
- Automatically dropped when the session ends (DB-dependent).

---

## Syntax

| Database            | Syntax                                     | Example                                                       |
| ------------------- | ------------------------------------------ | ------------------------------------------------------------- |
| MySQL               | `CREATE TEMPORARY TABLE table_name (...);` | `CREATE TEMPORARY TABLE temp_emp (id INT, name VARCHAR(50));` |
| SQL Server (Local)  | `CREATE TABLE #table_name (...);`          | `CREATE TABLE #temp_emp (id INT, name VARCHAR(50));`          |
| SQL Server (Global) | `CREATE TABLE ##table_name (...);`         | `CREATE TABLE ##temp_emp (id INT, name VARCHAR(50));`         |
| PostgreSQL          | `CREATE TEMP TABLE table_name (...);`      | `CREATE TEMP TABLE temp_emp (id INT, name TEXT);`             |

---

## Characteristics

| Feature       | Description                                              |
| ------------- | -------------------------------------------------------- |
| Scope         | Exists only within session (or transaction if specified) |
| Visibility    | Local temp → visible to current session only             |
| Storage       | Stored in temp database (DB-specific)                    |
| Auto Drop     | Dropped automatically at session end                     |
| Index Support | Can create indexes                                       |
| Constraints   | Supported (PRIMARY KEY, UNIQUE, etc.)                    |

---

## Use Cases

- Storing intermediate query results
- Breaking complex queries into steps
- Improving readability
- Reducing repeated calculations

---

## Difference: Temp Table vs CTE

| Feature     | Temporary Table             | CTE                    |
| ----------- | --------------------------- | ---------------------- |
| Storage     | Physically stored           | Logical (not stored)   |
| Lifetime    | Session-based               | Single query only      |
| Reusability | Multiple queries in session | Only within one query  |
| Performance | Better for large datasets   | Better for readability |
