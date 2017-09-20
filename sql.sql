-- create movies

CREATE TABLE movies(
   id             INTEGER  PRIMARY KEY, 
   name           TEXT DEFAULT NULL,
   year           INTEGER  DEFAULT NULL,
   rank           REAL DEFAULT NULL
);


-- create actors

CREATE TABLE actors(
	id 			INTEGER		PRIMARY KEY,
	first_name	TEXT	DEFAULT NULL,
	last_name 	TEXT	DEFAULT NULL,
	gender		TEXT	DEFAULT NULL
);


-- create roles

CREATE TABLE roles(
	actor_id	INTEGER
	movie_id	INTEGER,
	role_name	TEXT	DEFAULT NULL
);

___________________________________________________
-- now for the large IMDB DATABASE WORK
-- Queries

SELECT name FROM movies WHERE year = 1993;

-- Aggregation via Count(*)

SELECT COUNT(*) FROM movies WHERE year = 1982;

-- Stacktors

SELECT * FROM actors WHERE last_name LIKE "%stack%";

-- WHERE field_name LIKE "%hi" (only stuff ending in hi)   "%hi%" (stuff that includes hi) "hi%" (stuff starting with hi)

SELECT first_name,COUNT(*) FROM actors WHERE 

-- collapse selection(GROUP), shorten the list(LIMIT) , OUTPUT the most popular ones (ORDER BY)

SELECT COUNT(first_name) FROM actors ORDER BY first_name ASC LIMIT 10;

SELECT actors.first_name, COUNT(actors.first_name) AS Number FROM actors GROUP BY first_name ORDER BY Number DESC LIMIT 10;
--now for FULL names
-- CONCAT is like || and contained within parens

SELECT (actors.first_name || " " || actors.last_name), 
COUNT(actors.first_name || " " || actors.last_name) 
AS Number FROM actors GROUP by (actors.first_name || " " || actors.last_name) 
ORDER BY COUNT(actors.first_name || " " || actors.last_name) 
DESC LIMIT 10;

SELECT SOMETING ANYTING PLEASE UPLOAD lslfnasdlfansd;flkasnd;flaksdnf;alsk 
--Prolific
/*
Within actors table: 
	we care about the first_name and the last_name and the id

Within roles:
	count number of times an actor_id comes up in roles table
	assign that to role_count, and we have join this new column to 
	the actors table 

Join id from actors and actor_id from roles
Group the rows --> first name , last name , rolecount







