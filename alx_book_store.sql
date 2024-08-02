
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