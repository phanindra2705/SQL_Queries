-- Create the library_books table
CREATE TABLE library_books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    published_year INT,
    genre VARCHAR(50)
);

-- Insert data into the library_books table
INSERT INTO library_books (book_id, title, author, published_year, genre)
VALUES 
(1, 'To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction'),
(2, '1984', 'George Orwell', 1949, 'Dystopian'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Classic'),
(4, 'The Catcher in the Rye', 'J.D. Salinger', 1951, 'Young Adult');

-- Retrieve all data from the library_books table
SELECT * FROM library_books;
