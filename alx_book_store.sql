
CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE Books (
    book_id PRIMARY KEY,
    title VARCHAR(30),
    price DOUBLE,
    publication_date DATE
    author_id Foreign Key (author_id) REFERENCES Authors (author_id)
);

CREATE TABLE Authors (
    author_id PRIMARY KEY,
    author_name VARCHAR(215)
);

CREATE TABLE Customers(
    customer_id PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE Orders(
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details(
    order_detail_id PRIMARY KEY,
    quantity DOUBLE,
    order_id FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    book_id FOREIGN KEY(book_id) REFERENCES Books (book_id)
);