# Data Control Language (DCL)

- Used to control access, permissions, and database security.
- Manages user privileges on database objects (tables, views, sequences, procedures, etc.).

---

- ## Commands

    - ### 1. GRANT
        - Assigns specific privileges to a user or role.
        - Controls what operations a user can perform on database objects.
        - Syntax:
          ```sql
          GRANT privilege_type ON object_name TO user_name;
          ```
        - Example:
          ```sql
          GRANT SELECT, INSERT ON employees TO user1;
          ```
        - Common Privileges:
          - `SELECT`
          - `INSERT`
          - `UPDATE`
          - `DELETE`
          - `ALL PRIVILEGES`

    - ### 2. REVOKE
        - Removes previously granted privileges from a user or role.
        - Used to restrict or modify access control.
        - Syntax:
          ```sql
          REVOKE privilege_type ON object_name FROM user_name;
          ```
        - Example:
          ```sql
          REVOKE INSERT ON employees FROM user1;
          ```
