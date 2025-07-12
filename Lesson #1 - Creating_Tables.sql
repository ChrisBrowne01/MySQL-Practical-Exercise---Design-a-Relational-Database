-- Lesson 1 Creating Tables:

-- Employees Table: 
-- - Create a table to store employee details, ensuring each employee has a unique identifier, first and last name, email address, hire date, and optional department information.

CREATE TABLE Employees (
	EmployeeID INT PRIMARY KEY, 
	FirstName VARCHAR(50) NOT NULL, 
	LastName VARCHAR(50) NOT NULL, 
	EmailAdress VARCHAR(100),
	HireDate DATE, 
	Department VARCHAR(100) -- Optional Department 
);

-- Departments Table: 
-- - Design a table to store department details, including a unique identifier and department name. Each department should have a manager, who is one of the employees.

CREATE TABLE Departments (
	DepartmentID INT PRIMARY KEY, 
	DepartmentName VARCHAR(100), 
	ManagerID INT -- This will be the forign key referencing Employees
);

-- Projects Table:
-- - Develop a table to manage projects, where each project has a unique identifier, name, start date, and optional end date. Each project should be managed by an employee.

CREATE TABLE Projects (
	ProjectID INT PRIMARY KEY, 
	ProjectName VARCHAR(100), 
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	ManagerByEmployeeID INT -- This will be the forign key referencing Employees
);