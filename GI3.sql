-- Medium: Create a table with your top 10 movies. Include title, release date, and rating Create a query that pulls all movies, 
-- in order of release date, where the title includes the letter “s”.

USE favorite_cars;
CREATE TABLE Movies (
Title TEXT,
Release_Date DATE,
Rating REAL);
INSERT INTO Movies 
VALUES ("Gladiator","2000-05-05", "4.9"),
 ("Equalizer 2", "2018-07-20", "4.8"),
("The book of Eli", "2000-05-05", "4.7"),
 ("Kingsman golden circle", "2017-10-22", "4.9"),
 ("Aquaman", "2018-12-21", "4.5"),
 ("Wonder Woman", "2017-06-02", "4.6"),
 ("Pirates of caribbean the curse of the black pearl", "2003-06-28", "4.9"),
 ("Get out", "2017-02-24", "4.9"),
 ("Logan", "2017-03-03", "4.8"),
 ("Avengers Endgame", "2018-04-26", "4.9");
 SELECT * FROM Movies WHERE Title LIKE "%s%" ORDER BY Release_Date;
 
 -- Hard: Make a copy of your Medium Challenge Write out the queries that would add the director’s First Name and Last Name into two separate columns.
--  Create a query that puts the names together. Create a query to put the list in alphabetical order by the last name from A-Z After you order the
--  list, remove the Movies where the Last Name ends with ”R-Z” Write a query where the first three appear

ALTER TABLE Movies
ADD COLUMN
Director_First TEXT,
ADD COLUMN
Director_Last TEXT;
UPDATE Movies 
SET 
Director_First="Bob",
Director_Last="Smith"
WHERE Rating >= 4.7;
SELECT * FROM Movies;
UPDATE Movies
SET
Director_First="Time",
Director_Last="Brown"
WHERE Rating >= 3.5;
SELECT CONCAT(Director_First,' ',Director_Last) AS Director_Name FROM Movies;
SELECT * FROM Movies
ORDER BY Director_Last ASC
LIMIT 3;

  
 