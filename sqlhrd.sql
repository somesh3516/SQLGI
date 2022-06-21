-- HARD
-- Make a copy of your Medium Challenge 
CREATE TABLE movies2(
	Id INT AUTO_INCREMENT NOT NULL,
	Title VARCHAR(80),
	ReleaseDate DATE,
	Rating FLOAT,
	PRIMARY KEY (Id)
);
-- Write out the queries that would add the director’s First Name and Last Name into two separate columns.
ALTER TABLE movies2
ADD Director_First VARCHAR(80),
ADD Director_Last VARCHAR(80);

INSERT INTO movies2(
 	Title, ReleaseDate, Rating, Director_First, Director_Last)
VALUES
  ('Toy Story1', '1995-1-2', '8.3',"Somesh","Dixit"),
    ('Toy Story2', '1996-2-3','8.5',"Reem","Mod"),
    ('Toy Story3', '1997-3-4', '8.6',"Travis","Scott"),
    ('Toy Story4', '1998-4-5', '8.7',"Bailey","Wood"),
    ('Toy Story5', '1999-5-6', '8.9',"Henry","Nguyen"),
 ('Toy Story6', '2000-6-7', '8.0',"Savana", "Ramos"),
    ('Toy Story7', '2001-7-8', '8.1',"Valerie", "Huynh"),
    ('Toy Story8', '2002-8-9', '6.3',"Trung", "Ngo"),
    ('Toy Story9', '2003-9-10', '7.3',"Evan", "Valo"),
    ('Toy Story10','2004-10-11', '4.3',"Rico", "Dondora");
;
-- Create a query that puts the names together.\
SELECT CONCAT(Director_First, ' ', Director_Last) AS "Full Name",Title, ReleaseDate,Rating FROM movies2;
-- Create a query to put the list in alphabetical order by the last name from A-Z After you order the list,
SELECT * FROM movies2
ORDER BY Director_Last ASC;
-- remove the Movies where the Last Name ends with ”R-Z” 
SET SQL_SAFE_UPDATES = 0;
DELETE FROM movies2 WHERE REGEXP_LIKE (Director_Last, '[r-z]$','i');
-- Write a query where the first three appear
SELECT * FROM movies2 LIMIT 3;
