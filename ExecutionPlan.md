# Execution Plan

- Describes how the database engine executes a SQL query.
- Shows operations like table scan, index seek, join type, sort, etc.
- Used for performance tuning and optimization.

- ## Syntax

  | DBMS                    | Syntax                                                | Example                                                  |
  | ----------------------- | ----------------------------------------------------- | -------------------------------------------------------- |
  | **MySQL**               | `EXPLAIN SELECT ...;`                                 | `EXPLAIN SELECT * FROM Employees WHERE id = 10;`         |
  | **MySQL (Detailed)**    | `EXPLAIN ANALYZE SELECT ...;`                         | `EXPLAIN ANALYZE SELECT * FROM Employees WHERE id = 10;` |
  | **SQL Server**          | `SET SHOWPLAN_ALL ON;` or Actual Execution Plan (GUI) | `SET SHOWPLAN_ALL ON; SELECT * FROM Employees;`          |
  | **PostgreSQL**          | `EXPLAIN SELECT ...;`                                 | `EXPLAIN SELECT * FROM Employees WHERE id = 10;`         |
  | **PostgreSQL (Actual)** | `EXPLAIN ANALYZE SELECT ...;`                         | `EXPLAIN ANALYZE SELECT * FROM Employees WHERE id = 10;` |
  | **Oracle**              | `EXPLAIN PLAN FOR SELECT ...;`                        | `EXPLAIN PLAN FOR SELECT * FROM Employees;`              |

- ## Common Plan Operations
  | Operation   | Meaning                           |
  | ----------- | --------------------------------- |
  | Table Scan  | Reads entire table                |
  | Index Seek  | Uses index to fetch specific rows |
  | Index Scan  | Scans entire index                |
  | Nested Loop | Join using loop method            |
  | Hash Join   | Join using hash table             |
  | Sort        | Orders result set                 |
