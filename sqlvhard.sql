-- VERY HARD
-- Copy the table from your Very Easy Challenge. Write a query to add in three cars at once
CREATE TABLE cars2 (
 	Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Year INT,
    Make VARCHAR(100),
    Model VARCHAR(100)
);
INSERT INTO cars2(
 	Year, Make, Model)
VALUES
	(2019, 'Honda','SI'),
    (2021, 'Toyota','Corolla'),
    (2020, 'Kia','Soul')
;
-- Write a query to add in prices and colors for each of these cars
ALTER TABLE cars2
ADD COLUMN Color VARCHAR(20),
ADD COLUMN Price DECIMAL(10,2);

UPDATE cars2
SET Color = "White", Price = 30000.00
WHERE Id = 1;
UPDATE cars2
SET Color = "Blue", Price = 40000.00
WHERE Id = 2;
UPDATE cars2
SET Color = "Black", Price = 50000.00
WHERE Id = 3;
-- Write a query to put the Make and Model together in one column
SELECT CONCAT(Make, ' ', Model) AS "Make and Model", Year, Color, Price FROM cars2;
-- Create a new query that adds an additional column to the results to show how many cars have the same Make.
SELECT Make, COUNT(*)
FROM cars2
GROUP BY Make
HAVING COUNT(*) > 0; -- I did 0 because I only have 1 car for each make

-- Adding cars to test COUNT
INSERT INTO cars2(
 	Year, Make, Model)
VALUES
	(2019, 'Honda','SI'),
    (2021, 'Toyota','Corolla'),
    (2020, 'Kia','Soul');

-- Create a new query that adds an additional column to the results to show how many cars have the same Make.
SELECT Make, COUNT(*)
FROM cars2
GROUP BY Make
HAVING COUNT(*) > 1;
