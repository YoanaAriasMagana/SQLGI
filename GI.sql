SHOW DATABASES;

-- Very Easy: Create a table with your top three cars and include make, model, year. Create a query to add in two more cars
USE favorite_cars;
CREATE TABLE Cars (
MAKE TEXT,
Model TEXT, 
Year YEAR);
INSERT INTO Cars
VALUES("Honda", "Civic", "2020"),("Toyota", "Corolla", "2022"),("Ford", "Focus", "2005");
SELECT * FROM Cars;
INSERT INTO Cars
VALUES ("Ford", "Mustang", "1990"), ("Jeep", "Wrangler", "2012");

-- Very Hard: Copy the table from your Very Easy Challenge Write a query to add in three cars at once Write a query to add in prices
-- and colors for each of these cars Write a query to put the Make and Model together in one column Create a new query that adds an
-- additional column to the results to show how many cars have the same Make.

ALTER TABLE Cars
ADD COLUMN
Price INTEGER,
ADD COLUMN
Color TEXT;
INSERT INTO Cars
VALUE ("Honda", "Accord", "2019", 27000, "Blue"),
("Toyota", "Tacoma", "2011", 10000, "Green");
SELECT CONCAT (Make,' ',Model) AS Make_Model FROM Cars; 
DELETE FROM Cars WHERE Model = "Tacoma";
INSERT INTO Cars
VALUE
("Toyota", "Tacoma", "2011", 10000, "Green");
ALTER TABLE Cars
ADD COLUMN 
Same_Make VARCHAR(50) NOT NULL DEFAULT "Honda";
UPDATE Cars
SET Same_Make=REPLACE(Same_Make,Same_Make,CONCAT(Make,' ',Model));


