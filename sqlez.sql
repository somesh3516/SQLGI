-- EASY
-- Create a table with your top five favorite books with Title, Publish Date, and Author First/Last Name 
CREATE TABLE books (
 	Id INT NOT NULL AUTO_INCREMENT,
 	Title VARCHAR(100),
    Publish_date DATE,
    Author_First VARCHAR(80),
    Author_Last VARCHAR(80),
    PRIMARY KEY(Id)
);
-- Create a query to add in two new books Remove the oldest book Provide an additional query giving the sum of all books
INSERT INTO books
 	(Title, Publish_date, Author_First, Author_Last)
VALUES
 	('Harry Potter1', '1997-06-24', 'Joanne', 'Rowling'),
    ('Harry Potter2', '1998-06-20', 'Joanne', 'Rowling'),
   ('Harry Potter3', '2022-1-23', 'Joanne', 'Rowling');
   SELECT COUNT(Publish_date)
FROM Books;
DELETE FROM books
ORDER BY publish_date ASC
LIMIT 1; 