-- Lesson 4 Constraints:

-- - Make sure each task assignment is linked to a specific employee and project by creating a TaskAssignments table with appropriate primary and foreign keys.
CREATE TABLE TaskAssignments (
		TaskID INT PRIMARY KEY AUTO_INCREMENT,
		EmployeeID INT NOT NULL,
		ProjectID INT NOT NULL,
		AssignmentDate DATE,
		FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
		FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)				
);

-- - Add a unique constraint to the Email column in the Employees table to prevent duplicate email addresses.
ALTER TABLE employees
ADD CONSTRAINT unique_email UNIQUE (Email);

-- - Make sure that every project must have an end-date by setting a NOT NULL constraint on the EndDate column in the Projects table.
ALTER TABLE projects
MODIFY COLUMN EndDate DATE NOT NULL;