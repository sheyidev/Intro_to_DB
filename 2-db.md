## Types of Databases 
![ReplicaSet_Demo](https://github.com/sheyidev/alx_be_python/blob/main/_assets/mongodb.png?raw=true)

```md
The main objective of this section is to gain a comprehensive understanding of the different types of databases available, with a focus on SQL (Relational) and NoSQL databases. 



Explore their fundamental characteristics, strengths, weaknesses, and typical use cases. Develop the ability to evaluate and choose the appropriate database type based on specific requirements, such as data structure, scalability needs, and performance considerations.
```
## Concept Overview
```md
## Concept Overview
## Topics
- SQL - Relational Databases
- NoSQL - Non-Relational Databases

## Learning Objectives
- Understand the differences between SQL and NoSQL databases.
- Identify the characteristics, use cases, and examples of each type of database.

## SQL Databases
SQL (Structured Query Language) databases, also known as relational databases, are based on the relational model introduced by E.F. Codd in 1970. 

They store data in tables with predefined schema and use SQL for querying and manipulation. Data is organized into tables with rows (records) and columns (fields). Tables can be related to each other through foreign keys and join operations.

SQL databases enforce a strict schema, meaning that the structure of the data (tables, columns, and data types) must be defined in advance and they use Structured Query Language (SQL) for data manipulation and retrieval. 

SQL databases are well-suited for applications that require complex querying, data integrity, and transactions, such as financial systems, e-commerce platforms, and content management systems.

## Characteristics:

- Structured Data: Data is organized into predefined structures with strict schema.

- ACID Transactions: SQL databases support ACID (Atomicity, Consistency, Isolation, Durability) transactions to maintain data integrity.

- Data Integrity: Enforces data integrity through constraints such as primary keys, foreign keys, and unique constraints.

## Examples of Databases

MySQL: An open-source relational database management system (RDBMS) widely used in web development.

PostgreSQL: A powerful open-source object-relational database system known for its robustness and extensibility.

Oracle: A commercial RDBMS commonly used in enterprise applications

```
## NoSQL Databases
```md
NoSQL (Not only SQL) databases are non-relational databases that store and retrieve data in a way that differs from the tabular structure used in relational databases. 


They are designed to handle unstructured or semi-structured data and provide flexible schemas. NoSQL databases can be categorized into different types, including key-value stores, document-oriented databases, column-family stores, and graph databases.

NoSQL databases are designed to scale horizontally by distributing data across multiple servers or clusters, making them suitable for handling large volumes of data and high-traffic applications. 


They often sacrifice some of the ACID properties in favor of higher availability, partition tolerance, and eventual consistency.


## characteristics
Schema Flexibility: NoSQL databases support flexible schemas, allowing for easier adaptation to evolving data models.

Scalability: Designed for horizontal scalability, enabling distributed storage and processing across multiple nodes.


Variety of Data Models: Support various data models such as document, key-value, columnar, and graph.

## Examples:
https://www.youtube.com/watch?v=ZS_kXvOeQ5Y 

https://www.mongodb.com/resources/basics/databases/nosql-explained/nosql-vs-sql


MongoDB: A popular document-oriented NoSQL database that stores data in flexible JSON-like documents.

Cassandra: A distributed NoSQL database designed for scalability and high availability, commonly used in large-scale distributed systems.

Redis: An in-memory data store that supports various data structures like strings, lists, sets, and hashes.

```