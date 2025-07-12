# Practical Exercise - Design a Relational Database

TechNova Solutions is a technology consulting firm that manages various projects for clients, has multiple departments, and employs a diverse workforce. You have been tasked with designing a relational database for TechNova Solutions so that they can manage employees, departments, and projects. The goal is to create, modify, and optimise the database structure while ensuring data integrity.

## Lesson 1 Creating Tables

**Employees Table:**

- Create a table to store employee details, ensuring each employee has a unique identifier, first and last name, email address, hire date, and optional department information.

**Departments Table:**

- Design a table to store department details, including a unique identifier and department name. Each department should have a manager, who is one of the employees.

**Projects Table:**

- Develop a table to manage projects, where each project has a unique identifier, name, start date, and optional end date. Each project should be managed by an employee.

## Lesson 2 Altering Tables

- Add a column to the Employees table to store phone numbers.
- Make sure that every department has a name by including a NOT NULL constraint on the DepartmentName column.
- Rename the HireDate column in the Employees table to StartDate.
- Remove the Department column from the Employees table, as it is redundant.

## Lesson 3 Dropping Tables

- Drop the Departments table entirely from the database.
- Create a temporary table named TempProjects for testing purposes and then drop it.
- Write a script to drop the Employees table only if it exists.

## Lesson 4 Constraints

- Make sure each task assignment is linked to a specific employee and project by creating a TaskAssignments table with appropriate primary and foreign keys.
- Add a unique constraint to the Email column in the Employees table to prevent duplicate email addresses.
- Make sure that every project must have an end-date by setting a NOT NULL constraint on the EndDate column in the Projects table.

## Lesson 5 Indexes

- Create an index on the Email column in the Employees table to speed up email searches.
- Create a composite index on the LastName and FirstName columns in the Employees table to improve full name searches.
- Drop the index on the Email column if it is no longer needed.
