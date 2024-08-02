## CRUD Operations with SQL

```md
The objective of this concept is to develop a solid understanding of CRUD (Create, Read, Update, Delete) operations, which are the fundamental operations for managing data in a database using SQL. 

Learn how to perform these operations efficiently and effectively, enabling you to create, retrieve, modify, and remove data from tables.


## Concept Overview

## Topics
DDL (Data Definition Language)
DML (Data Manipulation Language)
CRUD Operations in SQL

## Learning Objectives
- Differentiate between Data definition and Data manipulation languages in SQL.

- Understand the fundamental concepts of creating, reading, updating, and deleting data in a database

```

## DDL (Data Definition Language)

```md
DDL statements are used to define and manage the structure of a database, including creating, modifying, and dropping database objects like tables, indexes, and views. 

DDL provides a way to create, alter, and remove database objects, as well as define constraints and relationships between them. Here are common commands:

CREATE TABLE: Used to create a new table with specified columns and data types. Example: CREATE TABLE Customers (CustomerID INT PRIMARY KEY, Name VARCHAR(50), Email VARCHAR(100));

ALTER TABLE: Used to modify an existing table, such as adding, modifying, or dropping columns. Example: ALTER TABLE Customers ADD Address VARCHAR(200);


DROP TABLE: Used to delete an existing table and all its data. Example: DROP TABLE Customers;


CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    EnrollmentDate DATE
);


This DDL statement creates a new table called “Students” with columns for StudentID (as the primary key), FirstName, LastName, Email (with a unique constraint), and EnrollmentDate. It defines the structure and constraints of the table.

```
## Data Manipulation Language
```md
## DML (Data Manipulation Language)

DML statements are used to manipulate data within database tables, including inserting, updating, and deleting records. DML provides a way to insert, modify, and remove data from database tables, allowing you to manage the content of your database. Here are common commands:

- INSERT: Used to add new records (rows) to a table. Example: - INSERT INTO Customers (Name, Email) VALUES ('John Doe', 'john@example.com');
- UPDATE: Used to modify existing records in a table. Example: - UPDATE Customers SET Email = 'newemail@example.com' WHERE CustomerID = 1;
- DELETE: Used to remove records from a table. Example: DELETE FROM Customers WHERE CustomerID = 1;

```

## CRUD (Create, Read, Update and Delete) Operations in SQL

```md
Create (INSERT)
The INSERT statement is used to create new records (rows) in a database table. It allows you to add new data to the table by specifying values for the columns.

The basic syntax for the INSERT statement is:

INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);

You can specify the columns for which you want to insert values, or you can omit the column list to insert values for all columns in the table.

When inserting values, the order of the values must match the order of the columns specified, or the order of the columns in the table if no column list is provided.

You can insert multiple rows at once by separating the value sets with commas:

INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...),
       (value3, value4, ...),
       ...;

```

## Read (SELECT)

```md
The SELECT statement is used to retrieve data from one or more tables in a database. It is the primary statement for querying and reading data.

The basic syntax for the SELECT statement is:

SELECT column1, column2, ...
FROM table_name;

You can specify the columns you want to retrieve, or use the *  wildcard to select all columns from the table.

The SELECT statement can be combined with various clauses to filter, sort, and manipulate the result set, such as WHERE, ORDER BY, JOIN, GROUP BY, and others.

Example:

SELECT FirstName, LastName, Email
FROM Students
WHERE EnrollmentDate > '2022-01-01'
ORDER BY LastName ASC

```

```md
Update (UPDATE)
The UPDATE statement is used to modify existing records in a database table. It allows you to update the values of one or more columns for specific rows that meet certain conditions.

The basic syntax for the UPDATE statement is:

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

The SET clause specifies the columns and their new values you want to update.

The WHERE clause is optional but recommended to filter the rows you want to update based on specific conditions. If omitted, all rows in the table will be updated.

Example:

UPDATE Students
SET Email = 'updated@example.com'
WHERE StudentID = 1;

```

```md

Delete (DELETE)
The DELETE statement is used to remove one or more records (rows) from a database table. It allows you to delete data that meets specific conditions.

The basic syntax for the DELETE statement is:

DELETE FROM table_name
WHERE condition;

The WHERE clause is optional but recommended to filter the rows you want to delete based on specific conditions. If omitted, all rows in the table will be deleted.

Example:

DELETE FROM Students
WHERE EnrollmentDate < '2021-01-01';



```

https://retool.com/blog/collection/build-and-learn

