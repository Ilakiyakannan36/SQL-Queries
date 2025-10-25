use ilakiya;
# INTERVIEW QUESTION
CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    author VARCHAR(100),
    publication_year INT,
    genre VARCHAR(50),
    price DECIMAL(8,2),
    stock INT
);


INSERT INTO books (title, author, publication_year, genre, price, stock)
VALUES
('To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction', 12.99, 10),
('1984', 'George Orwell', 1949, 'Science Fiction', 10.99, 15),
('Pride and Prejudice', 'Jane Austen', 1813, 'Romance', 9.99, 5),
('The Hobbit', 'J.R.R. Tolkien', 1937, 'Fantasy', 14.99, 20),
('The Catcher in the Rye', 'J.D. Salinger', 1951, 'Fiction', 11.99, 8);



# q1
SELECT SUM(price * stock), 2 AS total_inventory_values
FROM books;



#q2
SELECT genre, 
COUNT(*) AS book_count
FROM books 
GROUP BY genre;



#q3
SET SQL_SAFE_UPDATES = 0;
UPDATE books
SET price = ROUND(price * 0.9, 2)
WHERE publication_year <1950;
SELECT title,
ROUND(price / 0.9, 2) AS original_price,
price AS new_price
FROM books
WHERE publication_YEAR < 1950;
SET SQL_SAFE_UPDATES = 1;



#q4
SELECT title, author, genre, price
FROM books
WHERE genre = 'fiction' or price <12;
#q5
SELECT title, stock AS current_Stock, stock AS days_to_sell
FROM books 
WHERE stock > 10
ORDER BY days_to_sell DESC;

SELECT * FROM books;
DROP table books;



