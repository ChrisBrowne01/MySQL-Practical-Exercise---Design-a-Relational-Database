-- Lesson 2 Altering Tables:

-- - Add a column to the Employees table to store phone numbers.
ALTER TABLE Employees
ADD PhoneNumber VARCHAR(20); -- Phone numbers can be stored in differnt formats and dialing codes.


-- - Make sure that every department has a name by including a NOT NULL constraint on the DepartmentName column.
ALTER TABLE Departments
MODIFY COLUMN DepartmentName VARCHAR(100) NOT NULL;


-- - Rename the HireDate column in the Employees table to StartDate.
ALTER TABLE Employees
RENAME COLUMN HireDate TO StartDate;


-- - Remove the Department column from the Employees table, as it is redundant.
ALTER TABLE Employees
DROP COLUMN Department;