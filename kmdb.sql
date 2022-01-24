-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

-- Create new tables, according to your domain model
-- TODO!

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
-- TODO!

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!

DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS job;
DROP TABLE IF EXISTS character;
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS job_inmovie;

CREATE TABLE movie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  year INTEGER,
  rating TEXT,
  person_id INTEGER,
  job_id INTEGER
);

CREATE TABLE person (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  character_id INTEGER
);

CREATE TABLE character (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE job (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE job_inmovie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  person_id INTEGER,
  job_id INTEGER
);

INSERT INTO character (
    id,
    name
)
VALUES (
    "1",
    "Bruce Wayne"
),
(
    "2",
    "Alfred"
),
(
    "3",
    "Ra's Al Ghul"
),
(
    "4",
    "Rachel Dawes"
),
(
    "5",
    "Commissioner Gordon"
),
(
    "6",
    "Joker"
),
(
    "7",
    "Harvey Dent"
),
(
    "8",
    "Bane"
),
(
    "9",
    "John Blake"
),
(
    "10",
    "Selina Kyle"
),
(
    "11",
    "Director"
);


INSERT INTO job (
    id,
    name
)
VALUES (
    "1",
    "Director"
),
(
    "2",
    "Top Cast"
);

INSERT INTO person (
    id,
    first_name,
    last_name,
    character_id
)
VALUES (
    "1",
    "Christian",
    "Bale",
    "1"
),
(
    "2",
    "Michael",
    "Caine",
    "2"
),
(
    "3",
    "Liam",
    "Neeson",
    "3"
),
(
    "4",
    "Katie",
    "Holmes",
    "4"
),
(
    "5",
    "Gary",
    "Oldman",
    "5"
),
(
    "6",
    "Heath",
    "Ledger",
    "6"
),
(
    "7",
    "Aaron",
    "Eckhart",
    "7"
),
(
    "8",
    "Maggie",
    "Gyllenhaal",
    "4"
),
(
    "9",
    "Tom",
    "Hardy",
    "8"
),
(
    "10",
    "Joseph",
    "Gordon-Lewitt",
    "9"
),
(
    "11",
    "Anne",
    "Hathaway",
    "10"
),
(
    "12",
    "Christopher",
    "Nolan"
    "11"
);

SELECT * FROM person;
SELECT * FROM job;
SELECT * FROM character;

INSERT INTO job_inmovie (
    id,
    person_id,
    job_id
)
VALUES (
    "1",
    "1",
    "2"
),
(
    "2",
    "2",
    "2"
),
(
    "3",
    "3",
    "2"
),
(
    "4",
    "4",
    "2"
),
(
    "5",
    "5",
    "2"
),
(
    "6",
    "6",
    "2"
),
(
    "7",
    "7",
    "2"
),
(
    "8",
    "8",
    "2"
),
(
    "9",
    "9",
    "2"
),
(
    "10",
    "10",
    "2"
),
(
    "11",
    "11",
    "2"
),
(
    "12",
    "12",
    "1"
);

