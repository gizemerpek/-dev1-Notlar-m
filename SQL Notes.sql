What is SQL and What Is It Used For?
SQL (Structured Query Language) is a standard programming language used to manage and manipulate relational databases. It is used to perform tasks such as retrieving data, inserting new records, updating existing records, and deleting records. SQL can also define database structures like tables and indexes.

What is SQL Used For?
Querying data from a database

Inserting new data into tables

Updating existing data

Deleting data

Creating and modifying database structures

Managing user access and permissions

Categories of SQL Commands
SQL commands are divided into five main categories:

Type	Description
DDL – Data Definition Language	Defines and modifies the structure of database objects
DML – Data Manipulation Language	Deals with data manipulation (Insert, Update, Delete)
DQL – Data Query Language	Focuses on querying the database
DCL – Data Control Language	Controls access to data
TCL – Transaction Control Language	Manages transactions in the database

DDL (Data Definition Language)
Command	Description
CREATE	Creates databases, tables, views, indexes, etc.
ALTER	Modifies existing database objects
DROP	Deletes database objects
TRUNCATE	Removes all data from a table, but keeps the structure
RENAME	Renames database objects

Examples:

CREATE TABLE students (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE
);

ALTER TABLE students ADD email VARCHAR(100);

DROP TABLE students;

DML (Data Manipulation Language)
Command	Description
INSERT	Adds new records
UPDATE	Modifies existing records
DELETE	Removes records

Examples:

INSERT INTO students (id, first_name, last_name, birth_date) 
VALUES (1, 'John', 'Doe', '2000-01-01');

UPDATE students SET first_name = 'Jane' WHERE id = 1;

DELETE FROM students WHERE id = 1;

 DQL (Data Query Language)
Command	Description
SELECT	Used to retrieve data from the database

Examples:

SELECT * FROM students;

SELECT first_name, last_name FROM students WHERE birth_date > '2001-01-01';

SELECT COUNT(*) FROM students;


DCL (Data Control Language)
Command	Description
GRANT	Gives access privileges
REVOKE	Removes access privileges
Examples:
GRANT SELECT, INSERT ON students TO user1;

REVOKE INSERT ON students FROM user1;

TCL (Transaction Control Language)
Command	Description
COMMIT	Saves all changes made during a transaction
ROLLBACK	Undoes changes made in the current transaction
SAVEPOINT	Sets a point within a transaction to which you can roll back later
Examples:
BEGIN;

INSERT INTO students VALUES (2, 'Anna', 'Smith', '2002-07-21');

ROLLBACK;  -- cancels the insertion

-- or
COMMIT;    -- saves the changes permanently

Common SQL Keywords
WHERE: Filters results

ORDER BY: Sorts the result

GROUP BY: Groups rows that have the same values

HAVING: Filters grouped data

JOIN: Combines rows from two or more tables

IN, BETWEEN, LIKE, IS NULL: Used in conditions

Example:
SELECT first_name FROM students 
WHERE first_name LIKE 'A%' AND birth_date BETWEEN '2000-01-01' AND '2005-01-01';