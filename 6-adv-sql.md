## Advanced SQL 
The objective of this concept is expand your SQL knowledge and skills by exploring advanced techniques for querying, managing, and manipulating data within databases. 

Learn how to write complex queries, leverage powerful SQL constructs, and implement robust data control mechanisms to effectively handle and analyze large datasets.


```md
Concept Overview
Topics
- DQL (Data Query Language)
- Sorting and Filtering Data
- Complex Queries and Subqueries
- Data Control Language (DCL)


## Learning Objectives
- Understand DQL (Data Query Language) and its role in SQL.
- Master sorting and filtering data using ORDER BY and WHERE clauses.
- Explore constructing complex queries and subqueries for advanced data retrieval and manipulation.
- Get introduced to Data Control Language (DCL)
```
## DQL (Data Query Language)
```md
## DQL (Data Query Language)
DQL statements are used to retrieve data from database tables, allowing you to query and filter data based on specific conditions. 

DQL provides a way to select and retrieve data from one or more tables in a database, enabling you to access and analyze the stored information. Here are common commands:

- SELECT: Used to retrieve data from one or more tables. 

Example: 

SELECT * FROM Customers; (selects all columns and rows from the Customers table)

- WHERE: Used to filter rows based on specified conditions. Example: SELECT * FROM Customers WHERE City = 'New York';

- JOIN: Used to combine rows from two or more tables based on a related column between them. Example: SELECT Customers.Name, Orders.OrderD
```
```sql
SELECT FirstName, LastName, Email
FROM Students
WHERE EnrollmentDate >= '2022-01-01'
ORDER BY LastName ASC;

```

This DQL statement selects the FirstName, LastName, and Email columns from the “Students” table, 

filters the results to include only students who enrolled on or after January 1, 2022, and orders the results by LastName in ascending order.

## Sorting and Filtering Data

```md

## Sorting and Filtering Data
## Sorting
Sorting allows you to arrange your data set based on a specific column, like organizing books alphabetically by title. In SQL, you achieve this using the ORDER BY clause.

Here’s how it works:

Specifying the Order: After the SELECT statement, include the ORDER BY clause followed by the column name(s) you want to sort by.
Ascending or Descending?: By default, sorting is ascending (A to Z or lowest to highest for numbers). You can use the ASC keyword to explicitly define ascending order or DESC for descending order.


SELECT * FROM Products ORDER BY Price ASC;
```

## Filtering: Focusing on the Relevant
```md
Filtering allows you to narrow down your data set based on specific criteria. Imagine searching the library catalog for books published after 2020. Filtering achieves a similar function.

The WHERE clause is your key tool for filtering in SQL.

Here’s the breakdown:

- Defining Conditions: The WHERE clause comes after the FROM clause and lets you specify conditions that rows must meet to be included in the results. You use comparison operators (=, >, <, etc.) and logical operators (AND, OR, NOT) to combine these conditions.

- Filtering Logic: Only rows that satisfy all the conditions (when using AND) or at least one condition (when using OR) are included in the final result set.

```

```sql
SELECT * FROM Customers WHERE City = 'New York' AND Age > 25;

SELECT * FROM Orders WHERE OrderStatus = 'Shipped' AND OrderDate > '2023-01-01';
```
## Complex Queries and Subqueries
```md

Complex queries involve the use of multiple SQL clauses and operators to retrieve or manipulate data from one or more tables. 

They allow for more sophisticated data retrieval and analysis than simple queries. Complex queries are used to perform advanced data analysis, generate reports, and extract valuable insights from databases.

## Components of Complex Queries

Joins: Combining data from multiple tables based on related columns using JOIN clauses (e.g., INNER JOIN, LEFT JOIN, RIGHT JOIN).


Aggregation: Grouping and summarizing data using aggregate functions (e.g., SUM, AVG, COUNT) and GROUP BY clauses.

Subqueries: Nesting queries within other queries to perform operations or filter data.
Set Operations: Combining results of multiple queries using set operators (e.g., UNION, INTERSECT, EXCEPT).

## JOIN: Combining data from multiple tables
JOIN is a powerful concept in SQL that allows you to combine data from two or more tables based on a shared relationship between them. 

This is essential when you’re working with relational databases where information is often distributed across multiple tables.

## There are different types of JOINs, each serving a specific purpose:

INNER JOIN: This is the most common type of JOIN. It returns only rows where there’s a match in both tables based on the join condition.

LEFT JOIN: This JOIN includes all rows from the left table (specified before the JOIN keyword) and matching rows from the right table. Rows from the right table with no match will have NULL values in the corresponding columns.

RIGHT JOIN: Similar to LEFT JOIN, but it includes all rows from the right table and matching rows from the left table. Left table mismatches will result in NULL values.

FULL JOIN: This JOIN returns all rows from both tables, regardless of whether there’s a match in the other table. Unmatched rows will have NULL values in the corresponding columns.

## Here’s an example of an INNER JOIN:

Imagine you have two tables: “Customers” and “Orders”. The “Customers” table has a “CustomerID” column, and the “Orders” table has a “CustomerID” foreign key that references the “Customers” table.

SELECT c.Name, o.OrderID, o.OrderDate
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;

This query retrieves customer names (Name from Customers table) along with their order details (OrderID and OrderDate from Orders table) based on the matching “CustomerID” values.

## Aggregation
Aggregation in SQL involves applying aggregate functions to groups of rows in a table to summarize data and perform calculations. It allows for the analysis of large datasets by condensing information into meaningful insights. Aggregation is used to perform calculations on groups of data, such as calculating sums, averages, counts, minimums, and maximums.

## Aggregate Functions

SUM: Calculates the sum of values in a column.
AVG: Calculates the average of values in a column.
COUNT: Counts the number of rows in a group.
MIN: Finds the minimum value in a column.
MAX: Finds the maximum value in a column.
```

## Examples
```sql


SELECT Department, COUNT(*) AS EmployeeCount FROM Employees GROUP BY Department;
SELECT ProductCategory, AVG(UnitPrice) AS AvgPrice FROM Products GROUP BY ProductCategory;
SELECT OrderDate, SUM(TotalAmount) AS TotalSales FROM Orders GROUP BY OrderDate;

```

## Subqueries
Subqueries, also known as nested queries or inner queries, are SQL queries nested within another query. They are used to perform operations or filter data based on the results of another query.

Subqueries allow for more complex and flexible querying by enabling dynamic filtering, calculations, and data manipulations.

## Types of Subqueries

Single-row Subqueries: Return a single value or row and are used with single-row operators (e.g., =, >, <).
Multiple-row Subqueries: Return multiple rows and are used with multiple-row operators (e.g., IN, ANY, ALL).
Correlated Subqueries: Reference columns from the outer query within the subquery, allowing for correlated operations.
Examples:
```sql
SELECT ProductName
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products);


```

## DCL (Data Control Language)
DCL statements are used to manage user access and permissions within a database, ensuring data security and controlling who can access and modify data. 

DCL provides a way to grant or revoke privileges to users or roles, allowing you to control access to specific database objects or operations. Here are common commands:

GRANT: Used to grant specific privileges or roles to users or other roles. 

`Example: GRANT SELECT, INSERT ON Customers TO UserRole;`

`REVOKE`: Used to revoke or remove previously granted privileges or roles from users or other roles.

 Example:

`REVOKE SELECT ON Customers FROM UserRole;`
`
```sql

CREATE ROLE StudentAdmin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Students TO StudentAdmin;
CREATE USER 'admin_user' IDENTIFIED BY 'password123';
GRANT StudentAdmin TO 'admin_user';

```

These DCL statements create a new role called “StudentAdmin”, grant privileges (SELECT, INSERT, UPDATE, DELETE) on the “Students” table to that role, create a new user ‘adminuser’ with a password, and grant the “StudentAdmin” role to the ‘adminuser’ user, effectively giving them permissions to manage the “Students” table.
