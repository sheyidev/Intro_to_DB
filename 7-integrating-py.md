##
https://www.youtube.com/watch?v=vR5utJvN4JY&t=47s
```md
The objective of this concept is to guide you through integrating Python with MySQL databases using the mysql-connector-python library. 


We’ll cover the installation process, explore connection establishment, and demonstrate basic database operations.

## Concept Overview
## Topics
- Introduction to mysql-connector-python
- Working with Cursors
- Executing SQL Queries (SELECT, INSERT, UPDATE, DELETE)
- A Complete Example


## Learning Objectives
- Install and use the mysql-connector-python library
- Establish a connection to a MySQL database server
- Understand the concept of cursors in database interactions
- Execute basic SQL queries (SELECT, INSERT, UPDATE, DELETE) using Python
```


## Introduction to mysql-connector-python

```md
mysql-connector-python is a popular library that bridges the gap between Python and MySQL databases.


It provides a comprehensive interface for interacting with MySQL servers, allowing you to execute queries, manipulate data, and manage database objects.


## Installation
The recommended way to install mysql-connector-python is using pip, the Python package manager. Open your terminal or command prompt and run the following command, which download and install the library.

pip install mysql-connector-python

```

## Connecting to MySQL Database 
Once you have mysql-connector-python installed, we can start interacting with your MySQL database server. Here’s an example of how to connect:
```python
import mysql.connector

# Replace with your connection details
mydb = mysql.connector.connect(
    host="localhost",
    user="yourusername",
    password="yourpassword",
    database="yourdatabase"
)

print(mydb.get_server_info())

```

This code snippet imports the library, establishes a connection using the connect method, and retrieves some server information using get_server_info. Remember to replace the connection details with your actual credentials and database name.

## Working with Cursors
Cursors are objects used to execute SQL statements and fetch results from the database. 

You can create a cursor using the cursor method of the connection object. 

With the cursor in hand, you can execute various SQL queries. Once you’re finished working with the database, ensure you close the connection to release resources

Here are some examples:

```python
import mysql.connector

# Replace with your connection details
mydb = mysql.connector.connect(
    host="localhost",
    user="yourusername",
    password="yourpassword",
    database="yourdatabase"
)

mycursor = mydb.cursor()
# Execute SQL statements using the execute() method on the cursor

# Close connection to the databasse  
mycursor.close()
mydb.close()
```
## Executing SQL Queries (SELECT, INSERT, UPDATE, DELETE)

```python
## SELECT Retrieve data from a table
mycursor.execute("SELECT * FROM your_table")
myresult = mycursor.fetchall()

for row in myresult:
  print(row)



## INSERT Insert new data into a table
sql = "INSERT INTO your_table (name, email) VALUES (%s, %s)"
val = ("John", "john@example.com")
mycursor.execute(sql, val)
mydb.commit()  # Commit the changes


## UPDATE Modify existing data in a table
sql = "UPDATE your_table SET name = %s WHERE id = %s"
val = ("Jane", 1)
mycursor.execute(sql, val)
mydb.commit() # Commit the changes


## DELETE Remove data from a table
sql = "DELETE FROM your_table WHERE id = %s"
val = (2,)
mycursor.execute(sql, val)
mydb.commit() # Commit the changes

```

## A Complete example 

```md
## Introduction
The below code first establishes a connection to your MySQL database server. 

Then, it creates a table named customers if it doesn’t already exist. 

It demonstrates inserting two customer records, followed by reading all customer data using a SELECT statement.

Next, the code updates the email address of a customer with ID 1 and retrieves the updated record. Finally, it deletes the customer with ID 2 and closes the database connections.
```

```python
import mysql.connector

# Database connection details (replace with your own)
mydb = mysql.connector.connect(
    host="localhost",
    user="yourusername",
    password="yourpassword",
    database="mydb"
)

mycursor = mydb.cursor()

# Create a table named `customers` (if it doesn't exist)
mycursor.execute("""
CREATE TABLE IF NOT EXISTS customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE
)
""")

print("Table created successfully!")

# Insert some customer data
sql = "INSERT INTO customers (name, email) VALUES (%s, %s)"
val = ("John Doe", "john.doe@example.com")
mycursor.execute(sql, val)
mydb.commit()

print(mycursor.rowcount, "record(s) inserted.")

val = ("Jane Smith", "jane.smith@example.com")
mycursor.execute(sql, val)
mydb.commit()

print(mycursor.rowcount, "record(s) inserted.")

# Read all customer data
mycursor.execute("SELECT * FROM customers")
myresult = mycursor.fetchall()

print("Customers:")
for row in myresult:
  print(row)

# Update a customer's email
sql = "UPDATE customers SET email = %s WHERE id = %s"
val = ("updated.email@example.com", 1)
mycursor.execute(sql, val)
mydb.commit()

print(mycursor.rowcount, "record(s) updated.")

# Read the updated customer data
mycursor.execute("SELECT * FROM customers WHERE id = 1")
myresult = mycursor.fetchone()

print("Updated customer:")
print(myresult)

# Delete a customer
sql = "DELETE FROM customers WHERE id = 2"
mycursor.execute(sql)
mydb.commit()

print(mycursor.rowcount, "record(s) deleted.")

# Close connections
mycursor.close()
mydb.close()

print("Database connection closed.")

```
https://realpython.com/python-mysql/