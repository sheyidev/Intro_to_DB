
CREATE DATABASE alx_book_store;

USE alx_book_store;

CREATE TABLE Books (
    book_id PRIMARY KEY,
    title VARCHAR(30),
    price DOUBLE,
    publication_date DATE
    author_id Foreign Key (author_id) REFERENCES Authors (author_id)

)

