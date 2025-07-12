-- Lesson 1 Creating Tables:

-- Employees Table: 
-- - Create a table to store employee details, ensuring each employee has a unique identifier, first and last name, email address, hire date, and optional department information.

CREATE TABLE Employees (
	EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Email VARCHAR(100) NOT NULL UNIQUE,
	HireDate DATE NOT NULL,
	Department VARCHAR(50) -- Optional Department 
);

-- Departments Table: 
-- - Design a table to store department details, including a unique identifier and department name. Each department should have a manager, who is one of the employees.

CREATE TABLE Departments (
	DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
	DepartmentName VARCHAR(100) NOT NULL,
	ManagerID INT,
	FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

-- Projects Table:
-- - Develop a table to manage projects, where each project has a unique identifier, name, start date, and optional end date. Each project should be managed by an employee.

CREATE TABLE Projects (
	ProjectID INT PRIMARY KEY AUTO_INCREMENT,
	ProjectName VARCHAR(100) NOT NULL UNIQUE,
	StartDate DATE NOT NULL,
	EndDate DATE,
	ManagerID INT,
	FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);