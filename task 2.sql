CREATE DATABASE ELEVATE ;
USE ELEVATE ;
CREATE TABLE Employees (
    EmpID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Department TEXT,
    Salary REAL,
    ManagerID INTEGER
);

-- Insert data 
INSERT INTO Employees (EmpID, Name, Department, Salary, ManagerID)
VALUES (1, 'Amit', 'IT', 45000, NULL);

INSERT INTO Employees (EmpID, Name, Department, Salary, ManagerID)
VALUES (2, 'Sneha', 'HR', NULL, 1);

INSERT INTO Employees (EmpID, Name, Department, Salary, ManagerID)
VALUES (3, 'Rahul', 'Finance', 55000, 1);

-- Insert partial values (some columns will take default NULL)
INSERT INTO Employees (EmpID, Name)
VALUES (4, 'Priya');

-- Update data
UPDATE Employees
SET Salary = 50000
WHERE Name = 'Sneha';

-- Update multiple rows
UPDATE Employees
SET Department = 'Operations'
WHERE Department IS NULL;

-- Delete with condition
DELETE FROM Employees
WHERE EmpID = 4;


