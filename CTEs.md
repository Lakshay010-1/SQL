# Common Table Expression (CTE)

- A temporary named result set defined within a query.
- Improves readability and modularizes complex SQL logic.
- Exists only for the duration of the query execution.

---

## Syntax

| Component     | Syntax                                                                              |
| ------------- | ----------------------------------------------------------------------------------- |
| Basic CTE     | `WITH cte_name AS (subquery) SELECT * FROM cte_name;`                               |
| Multiple CTEs | `WITH cte1 AS (...), cte2 AS (...) SELECT ...;`                                     |
| Recursive CTE | `WITH cte_name AS (anchor_query UNION ALL recursive_query) SELECT * FROM cte_name;` |

---

## Types of CTE

---

- ### Non-Recursive CTE
  - Does not reference itself.
  - Executes once.
  - Used for simplification and modular query writing.

  | Type            | Description                    | Example                                                                                                                                   |
  | --------------- | ------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------- |
  | Stand-alone CTE | Defined once and directly used | `WITH dept_avg AS (SELECT department, AVG(salary) AS avg_sal FROM Employees GROUP BY   department) SELECT * FROM dept_avg;`               |
  | Nested CTE      | One CTE depends on another CTE | `WITH cte1 AS (SELECT * FROM Employees), cte2 AS (SELECT department, COUNT(*) AS cnt FROM  cte1 GROUP BY department) SELECT * FROM cte2;` |

- ### Recursive CTE
  - References itself.
  - Used for hierarchical or tree-structured data.
  - Consists of:
    - Anchor Query (base case)
    - Recursive Query (self-reference)
    - Combined using `UNION ALL`

    | Type          | Description                 | Example                                                                                                                                                                                                |
    | ------------- | --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
    | Recursive CTE | Processes hierarchical data | `WITH emp_cte AS (SELECT id, manager_id FROM Employees WHERE manager_id IS NULL UNION ALL SELECT    e.id, e.manager_id FROM Employees e JOIN emp_cte c ON e.manager_id = c.id) SELECT * FROM emp_cte;` |

## Quick Comparison

| Feature        | Non-Recursive                   | Recursive                             |
| -------------- | ------------------------------- | ------------------------------------- |
| Self-reference | No                              | Yes                                   |
| Execution      | Runs once                       | Runs repeatedly until condition fails |
| Use Case       | Simplification, modular queries | Hierarchies, trees, graph traversal   |
