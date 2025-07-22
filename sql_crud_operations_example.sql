-- Project: Friends Table Demonstration
-- This script showcases fundamental SQL operations:
-- - Creating a table
-- - Inserting, updating, and deleting records
-- - Modifying table schema
-- - Querying data

-- Create the "friends" table with ID, name, and birthday
CREATE TABLE friends (
  id INTEGER PRIMARY KEY,
  name TEXT,
  birthday DATE
);

-- Insert record for Ororo Munroe
INSERT INTO friends (id, name, birthday)
VALUES (1, 'Ororo Munroe', '1940-05-30');
-- Insert record for Shelby McCarthy
INSERT INTO friends (id, name, birthday)
VALUES (2, 'Shelby McCarthy', '1997-01-08');
-- Insert record for Pawel Tarnowski
INSERT INTO friends (id, name, birthday)
VALUES (3, 'Pawel Tarnowski', '1991-06-30');

-- Update name from "Ororo Munroe" to "Storm"
UPDATE friends
SET name = 'Storm'
WHERE id = 1;

-- Add an "email" column to the table schema
ALTER TABLE friends
ADD COLUMN email TEXT;

-- Update email address for Storm
UPDATE friends
SET email = 'storm@email.com'
WHERE id = 1;
-- Update email address for Shelby McCarthy
UPDATE friends
SET email = 'shelby@email.com'
WHERE id = 2;
-- Update email address for Pawel Tarnowski
UPDATE friends
SET email = 'pav@email.com'
WHERE id = 3;

-- Delete the record for "Storm" (id = 1) from the table
DELETE FROM friends
WHERE id = 1;

-- Display all remaining records in the "friends" table
SELECT *
FROM friends
