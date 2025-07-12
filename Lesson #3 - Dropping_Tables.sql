-- Lesson 3 Dropping Tables:

-- - Drop the Departments table entirely from the database.
DROP TABLE Departments;

-- - Create a temporary table named TempProjects for testing purposes and then drop it.
CREATE TEMPORARY TABLE TempProjects (
	TempID INT PRIMARY KEY,
	TempName VARCHAR(50)
);
DROP TEMPORARY TABLE TempProjects;

-- - Write a script to drop the Employees table only if it exists.
DROP TABLE IF EXISTS Employees; 