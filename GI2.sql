-- Easy: Create a table with your top five favorite books with Title, Publish Date, and
-- Author First/Last Name Create a query to add in two new books Remove the oldest book Provide an additional query giving the sum of all books
SET SQL_SAFE_UPDATES = 0;
USE favorite_cars;
CREATE TABLE Books(
Title TEXT,
Publish_Date DATE,
Author_First TEXT,
Author_Last TEXT);
SELECT * FROM Books;
INSERT INTO Books
VALUES ("Cat in the Hat", "2002-01-16", "Theodore", "Seuss"),
("The Confidence Game", "2012-06-04", "Maria", "Konnikova"),
("It ends with us", "2017-11-25", "Colleen", "Hoover"),
("The things I didn't say in therapy", "2020-02-03", "Logan", "Duane"),
("Milk and honey", "2010-07-18", "Rupi", "Kaur"); 
INSERT INTO Books
VALUES ("They both die at the end", "2013-09-27", "Adam", "Silvera"),
("The things we cannot say", "2015-04-10", "Kelly", "Rimmer");
SELECT * FROM Books
ORDER BY Publish_Date;
DELETE FROM Books
ORDER BY Publish_Date
LIMIT 1;
SELECT COUNT(*) FROM Books;
SELECT * FROM Cars;


