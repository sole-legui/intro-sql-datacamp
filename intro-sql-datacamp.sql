--Intro to SQL for Data Science - DataCamp - 
-- TABLE people--
--Part 1 SELECTING COLUMNS
---------------------------
-- Onboarding | Tables
	select * from people

-- Onboarding | Query Result
	select * from people

-- Onboarding | Errors

-- Try running me!
SELECT 'DataCamp <3 SQL'
AS result;

-- result
--DataCamp <3 SQL --

-- Onboarding | Multi-step Exercises--
--submit the query into the editor --
SELECT 'SQL'
AS result;

-- Change "SQL" to "SQL is" and clicn summit --

SELECT 'SQL is'
AS result;

-- Finally, change 'SQL is' to 'SQL is cool' and click Submit!--
SELECT 'SQL is cool'
AS result;

-- SELECTing single columns--

-- Select the title from the films table -- 
SELECT title 
FROM films;

--Select the release_year column from the films table.
SELECT release_year
FROM films;

--Select the name of each person in the people table.
SELECT name
from people;

--SELECTing multiple columns--
--Get the title of every film from the films table.
SELECT title
FROM films;

--Get the title and release year for every film.
SELECT title, release_year
FROM films;

--Get the title, release year and country for every film.
SELECT title, release_year, country
FROM films;

--Get all columns from the films table.
SELECT *
FROM films;

-- SELECT DISTINCT--

-- Get all the unique countries represented in the films table.
SELECT DISTINCT country
FROM films;

--Get all the different film certifications from the films table.
SELECT DISTINCT certification
FROM films;

--Get the different types of film roles from the roles table.
SELECT DISTINCT role
FROM roles;

-- Learning to COUNT--

--How many records are contained in the reviews table?- 
SELECT COUNT (*)
FROM reviews;  

-- Practice with COUNT--
--Count the number of rows in the people table.
SELECT COUNT (*)
FROM people;

--Count the number of (non-missing) birth dates in the people table.
SELECT COUNT(birthdate)
FROM people;

--Count the number of unique birth dates in the people table.
SELECT COUNT(DISTINCT birthdate)
FROM people;

--Count the number of unique languages in the films table.
SELECT COUNT (DISTINCT language)
FROM films;

--Count the number of unique countries in the films table.
SELECT COUNT(DISTINCT country)
FROM films;

--Simple filtering of numeric values--
--Get all details for all films released in 2016.
SELECT *
FROM films 
WHERE release_year = 2016;

--Get the number of films released before 2000.--
SELECT COUNT(*)
FROM films
WHERE release_year < 2000

--Get the title and release year of films released after 2000.
SELECT title , release_year
FROM films
WHERE release_year > 2000;

-- Simple filtering of text--


--Get all details for all French language films.
SELECT *
FROM films
WHERE language = 'French';

--Get the name and birth date of the person born on November 11th, 1974. Remember to use ISO date format ('1974-11-11')!
SELECT name, birthdate
FROM people
WHERE birthdate = '1974-11-11';

-- Get the number of Hindi language films.
SELECT COUNT (*)
FROM films
WHERE language = 'Hindi'

--Get all details for all films with an R certification.
SELECT *
FROM films
WHERE certification = 'R';

--WHERE AND--

--Get the title and release year for all Spanish language films released before 2000.
SELECT title, release_year
FROM films
WHERE language = 'Spanish' AND release_year < 2000;

--Get all details for Spanish language films released after 2000.
SELECT *
FROM films
WHERE language = 'Spanish' AND release_year > 2000;

--Get all details for Spanish language films released after 2000, but before 2010.
SELECT *
FROM films
WHERE language = 'Spanish' AND release_year > 2000 AND  release_year < 2010; 

