-- MEDIUM
-- Create a table with your top 10 movies. Include title, release date, and rating
CREATE TABLE movies(
	Id INT AUTO_INCREMENT NOT NULL,
	Title VARCHAR(80),
	ReleaseDate DATE,
	Rating FLOAT,PRIMARY KEY (Id)
);
INSERT INTO movies(
 	Title, ReleaseDate, Rating)
	VALUES
    ('Toy Story1', '1995-1-2', '8.3'),
    ('Toy Story2', '1996-2-3', '8.5'),
    ('Toy Story3', '1997-3-4', '8.6'),
    ('Toy Story4', '1998-4-5', '8.7'),
    ('Toy Story5', '1999-5-6', '8.9'),
    ('Toy Story6', '2000-6-7', '8.0'),
    ('Toy Story7', '2001-7-8', '8.1'),
    ('Toy Story8', '2002-8-9', '6.3'),
    ('Toy Story9', '2003-9-10', '7.3'),
    ('Toy Story10','2004-10-11', '4.3');
    
-- Create a query that pulls all movies, in order of release date, where the title includes the letter “s”.
SELECT * FROM movies
WHERE Title LIKE ("%s%")
ORDER BY releasedate;
