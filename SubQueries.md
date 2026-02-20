# Sub-Queries

- A subquery is a query nested inside another SQL query.
- Also called an Inner or Nested Query.
- The outer query depends on the result of the inner query.
- Basic Syntax
  ```sql
      SELECT column
      FROM table
      WHERE column = (
          SELECT column
          FROM table
      );
  ```

---

## Based on Return Type

| Type         | Description               | Example                                                                                                                      |
| ------------ | ------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| Single Row   | Returns exactly one value | `SELECT * FROM Employees WHERE salary > (SELECT AVG(salary) FROM Employees);`                                                |
| Multi Row    | Returns multiple rows     | `SELECT * FROM Employees WHERE department IN (SELECT department FROM Departments);`                                          |
| Multi Column | Returns multiple columns  | `SELECT * FROM Employees WHERE (department, salary) IN (SELECT department, MAX(salary) FROM Employees GROUP BY department);` |

---

## Based on Location

| Location | Description                   | Example                                                                                                                                                           |
| -------- | ----------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `SELECT` | Used as a column expression   | `SELECT name, (SELECT AVG(salary) FROM Employees) AS avg_salary FROM Employees;`                                                                                  |
| `FROM`   | Acts as derived table         | `SELECT * FROM (SELECT department, AVG(salary) AS avg_sal FROM Employees GROUP BY department) AS dept_avg;`                                                       |
| `JOIN`   | Used inside JOIN clause       | `SELECT e.name, d.avg_sal FROM Employees e JOIN (SELECT department, AVG(salary) AS avg_sal FROM Employees GROUP BY department) d ON e.department = d.department;` |
| `WHERE`  | Used for filtering conditions | `SELECT * FROM Employees WHERE salary > (SELECT AVG(salary) FROM Employees);`                                                                                     |

---

## Based on Dependency

| Type           | Description                           | Example                                                                                                         |
| -------------- | ------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| Non-Correlated | Executes independently (runs once)    | `SELECT * FROM Employees WHERE salary > (SELECT AVG(salary) FROM Employees);`                                   |
| Correlated     | Depends on outer query (runs per row) | `SELECT * FROM Employees e WHERE salary > (SELECT AVG(salary) FROM Employees WHERE department = e.department);` |

---

## Common Operators Used in Subqueries

| Operator | Purpose                              | Example                                                                         |
| -------- | ------------------------------------ | ------------------------------------------------------------------------------- |
| `IN`     | Matches any value in list            | `WHERE department IN (SELECT department FROM Departments);`                     |
| `EXISTS` | Checks if subquery returns rows      | `WHERE EXISTS (SELECT 1 FROM Departments d WHERE d.department = e.department);` |
| `ANY`    | True if condition matches any value  | `WHERE salary > ANY (SELECT salary FROM Employees);`                            |
| `ALL`    | True if condition matches all values | `WHERE salary > ALL (SELECT salary FROM Employees);`                            |
