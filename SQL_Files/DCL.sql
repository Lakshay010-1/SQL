-- Data Control Language (DCL) commands are used to control access, permissions, and security in the database 
-- (Gives a user specific privileges (permissions) on database objects like tables, views, sequences, etc)
-- (Removes previously granted privileges from a user)

-- Grant command 
GRANT privilege_type ON object_name TO user_name;
/*
e.g.-
    GRANT SELECT, INSERT ON employees TO user1;
*/

-- Revoke command
REVOKE privilege_type ON object_name FROM user_name;
/*
e.g.-   
    REVOKE INSERT ON employees FROM user1;
*/
