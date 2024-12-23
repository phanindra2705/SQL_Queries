-- Create the authors table
CREATE TABLE example.authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100)
);

-- Create the books table
CREATE TABLE example.books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Insert data into authors table
INSERT INTO authors (author_id, author_name)
VALUES (1, 'J.K. Rowling'), (2, 'George R.R. Martin');

-- Insert data into books table
INSERT INTO books (book_id, title, author_id)
VALUES (1, 'Harry Potter', 1), (2, 'Game of Thrones', 2);

-- Retrieve books and their authors
SELECT books.title, authors.author_name
FROM books
JOIN authors
ON books.author_id = authors.author_id;
