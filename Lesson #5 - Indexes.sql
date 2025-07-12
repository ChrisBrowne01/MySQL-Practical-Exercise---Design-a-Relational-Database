-- Lesson 5 Indexes:

-- - Create an index on the Email column in the Employees table to speed up email searches.
CREATE INDEX index_email ON Employees (Email);

-- - Create a composite index on the LastName and FirstName columns in the Employees table to improve full name searches.
CREATE INDEX index_fullname ON Employees (LastName, FirstName);

-- - Drop the index on the Email column if it is no longer needed.
DROP INDEX index_email ON Employees;