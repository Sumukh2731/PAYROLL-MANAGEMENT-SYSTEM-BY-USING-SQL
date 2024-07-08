drop database employee_info;
create database employee_info;
use employee_info;
-- Table for employees
drop table employees;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary, HireDate) 
VALUES
    (1, 'abhay', 'kholi', 1, 50000.00, '2020-01-15'),
    (2, 'Ravi', 'Patel', 2, 60000.00, '2019-11-20'),
    (3, 'Priya', 'Sharma', 1, 55000.00, '2020-03-10'),
    (4, 'Amit', 'Singh', 3, 62000.00, '2018-07-05'),
    (5, 'Neha', 'Gupta', 1, 48000.00, '2021-02-18'),
    (6, 'Vivek', 'Kumar', 2, 58000.00, '2019-05-25'),
    (7, 'Anjali', 'Verma', 3, 63000.00, '2020-08-14'),
    (8, 'Sanjay', 'Joshi', 1, 51000.00, '2017-12-30'),
    (9, 'Pooja', 'Malhotra', 2, 59000.00, '2020-06-02'),
    (10, 'Rahul', 'Shah', 3, 64000.00, '2018-04-09'),
    (11, 'Deepak', 'Choudhary', 1, 52000.00, '2019-10-17'),
    (12, 'Sneha', 'Yadav', 2, 57000.00, '2021-01-28'),
    (13, 'Akash', 'Rao', 3, 66000.00, '2020-11-03'),
    (14, 'Swati', 'Iyer', 1, 49000.00, '2018-08-22'),
    (15, 'Harish', 'Sharma', 2, 60000.00, '2019-03-05'),
    (16, 'Kavita', 'Patil', 3, 65000.00, '2021-04-12'),
    (17, 'Rajesh', 'Chauhan', 1, 53000.00, '2017-07-19'),
    (18, 'Meera', 'Reddy', 2, 56000.00, '2020-09-23'),
    (19, 'Ashok', 'Mishra', 3, 67000.00, '2018-12-07'),
    (20, 'Aarti', 'Singhania', 1, 50000.00, '2019-01-30'),
    (21, 'Vikram', 'Gandhi', 2, 61000.00, '2021-02-14'),
    (22, 'Sunita', 'Jain', 3, 68000.00, '2017-11-26'),
    (23, 'Arun', 'Kulkarni', 1, 54000.00, '2020-05-18'),
    (24, 'Divya', 'Shukla', 2, 62000.00, '2018-10-31'),
    (25, 'Anil', 'Desai', 3, 69000.00, '2019-04-07'),
    (26, 'Jyoti', 'Gupta', 1, 55000.00, '2021-03-22'),
    (27, 'Ramesh', 'Rastogi', 2, 63000.00, '2018-06-14'),
    (28, 'Nisha', 'Mehra', 3, 70000.00, '2020-09-10'),
    (29, 'Vinod', 'Bhatia', 1, 56000.00, '2019-02-03'),
    (30, 'Shalini', 'Agarwal', 2, 64000.00, '2018-11-27');

   

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'HR'),
    (2, 'Finance'),
    (3, 'Marketing'),
    (4, 'HR'),
    (5, 'Finance'),
    (6, 'Marketing'),
    (7, 'Sales'),
    (8, 'Engineering'),
    (9, 'Customer Service'),
    (10, 'Research and Development'),
    (11, 'Operations'),
    (12, 'Legal'),
    (13, 'Information Technology'),
    (14, 'Product Management'),
    (15, 'Quality Assurance'),
    (16, 'Public Relations'),
    (17, 'Supply Chain Management'),
    (18, 'Business Development'),
    (19, 'Data Analytics'),
    (20, 'Human Resources'),
    (21, 'Finance and Accounting'),
    (22, 'Marketing and Sales'),
    (23, 'IT Services'),
    (24, 'Consulting'),
    (25, 'Digital Marketing'),
    (26, 'Customer Support'),
    (27, 'Software Development'),
    (28, 'Project Management'),
    (29, 'Legal Affairs'),
    (30, 'Research');
  

-- Table for salaries
CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY,
    EmployeeID INT,
    Salary DECIMAL(10, 2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
INSERT INTO Salaries (SalaryID, EmployeeID, Salary, StartDate, EndDate)
VALUES
    (1, 1, 50000.00, '2020-01-01', '2020-12-31'),
    (2, 2, 60000.00, '2019-01-01', '2019-12-31'),
    (3, 3, 55000.00, '2021-01-01', '2021-12-31'),
    (4, 4, 52000.00, '2020-01-01', '2020-12-31'),
    (5, 5, 48000.00, '2018-01-01', '2018-12-31'),
    (6, 6, 65000.00, '2019-01-01', '2019-12-31'),
    (7, 7, 54000.00, '2020-01-01', '2020-12-31'),
    (8, 8, 70000.00, '2017-01-01', '2017-12-31'),
    (9, 9, 51000.00, '2019-01-01', '2019-12-31'),
    (10, 10, 59000.00, '2021-01-01', '2021-12-31'),
    (11, 11, 49000.00, '2018-01-01', '2018-12-31'),
    (12, 12, 68000.00, '2020-01-01', '2020-12-31'),
    (13, 13, 48000.00, '2019-01-01', '2019-12-31'),
    (14, 14, 57000.00, '2020-01-01', '2020-12-31'),
    (15, 15, 52000.00, '2021-01-01', '2021-12-31'),
    (16, 16, 72000.00, '2018-01-01', '2018-12-31'),
    (17, 17, 56000.00, '2020-01-01', '2020-12-31'),
    (18, 18, 50000.00, '2019-01-01', '2019-12-31'),
    (19, 19, 69000.00, '2021-01-01', '2021-12-31'),
    (20, 20, 58000.00, '2018-01-01', '2018-12-31'),
    (21, 21, 53000.00, '2020-01-01', '2020-12-31'),
    (22, 22, 71000.00, '2019-01-01', '2019-12-31'),
    (23, 23, 55000.00, '2018-01-01', '2018-12-31'),
    (24, 24, 51000.00, '2021-01-01', '2021-12-31'),
    (25, 25, 73000.00, '2020-01-01', '2020-12-31'),
    (26, 26, 59000.00, '2019-01-01', '2019-12-31'),
    (27, 27, 54000.00, '2018-01-01', '2018-12-31'),
    (28, 28, 74000.00, '2021-01-01', '2021-12-31'),
    (29, 29, 60000.00, '2019-01-01', '2019-12-31'),
    (30, 30, 55000.00, '2020-01-01', '2020-12-31');

  
-- Table for timecards
CREATE TABLE Timecards (
    TimecardID INT PRIMARY KEY,
    EmployeeID INT,
    HoursWorked DECIMAL(5, 2),
    WorkDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
INSERT INTO Timecards (TimecardID, EmployeeID, HoursWorked, WorkDate)
VALUES
    (1, 1, 8.0, '2024-04-01'),
    (2, 2, 7.5, '2024-04-01'),
	(3, 3, 8.0, '2024-04-01'),
    (4, 4, 8.0, '2024-04-01'),
    (5, 5, 7.5, '2024-04-01'),
    (6, 6, 8.0, '2024-04-01'),
    (7, 7, 7.5, '2024-04-01'),
    (8, 8, 8.0, '2024-04-01'),
    (9, 9, 7.5, '2024-04-01'),
    (10, 10, 8.0, '2024-04-01'),
    (11, 11, 8.0, '2024-04-01'),
    (12, 12, 7.5, '2024-04-01'),
    (13, 13, 8.0, '2024-04-01'),
    (14, 14, 8.0, '2024-04-01'),
    (15, 15, 7.5, '2024-04-01'),
    (16, 16, 8.0, '2024-04-01'),
    (17, 17, 7.5, '2024-04-01'),
    (18, 18, 8.0, '2024-04-01'),
    (19, 19, 8.0, '2024-04-01'),
    (20, 20, 7.5, '2024-04-01'),
    (21, 21, 8.0, '2024-04-01'),
    (22, 22, 8.0, '2024-04-01'),
    (23, 23, 7.5, '2024-04-01'),
    (24, 24, 8.0, '2024-04-01'),
    (25, 25, 8.0, '2024-04-01'),
    (26, 26, 7.5, '2024-04-01'),
    (27, 27, 8.0, '2024-04-01'),
    (28, 28, 8.0, '2024-04-01'),
    (29, 29, 7.5, '2024-04-01'),
    (30, 30, 8.0, '2024-04-01');

 
-- Table for deductions
CREATE TABLE Deductions (
    DeductionID INT PRIMARY KEY,
    EmployeeID INT,
    DeductionType VARCHAR(50),
    Amount DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
INSERT INTO Deductions (DeductionID, EmployeeID, DeductionType, Amount)
VALUES
    (1, 1, 'Health Insurance', 100.00),
    (2, 2, '401(k) Contribution', 150.00),
    (3, 3, 'Health Insurance', 100.00),
    (4, 4, '401(k) Contribution', 150.00),
    (5, 5, 'Health Insurance', 100.00),
    (6, 6, '401(k) Contribution', 150.00),
    (7, 7, 'Health Insurance', 100.00),
    (8, 8, '401(k) Contribution', 150.00),
    (9, 9, 'Health Insurance', 100.00),
    (10, 10, '401(k) Contribution', 150.00),
    (11, 11, 'Health Insurance', 100.00),
    (12, 12, '401(k) Contribution', 150.00),
    (13, 13, 'Health Insurance', 100.00),
    (14, 14, '401(k) Contribution', 150.00),
    (15, 15, 'Health Insurance', 100.00),
    (16, 16, '401(k) Contribution', 150.00),
    (17, 17, 'Health Insurance', 100.00),
    (18, 18, '401(k) Contribution', 150.00),
    (19, 19, 'Health Insurance', 100.00),
    (20, 20, '401(k) Contribution', 150.00),
    (21, 21, 'Health Insurance', 100.00),
    (22, 22, '401(k) Contribution', 150.00),
    (23, 23, 'Health Insurance', 100.00),
    (24, 24, '401(k) Contribution', 150.00),
    (25, 25, 'Health Insurance', 100.00),
    (26, 26, '401(k) Contribution', 150.00),
    (27, 27, 'Health Insurance', 100.00),
    (28, 28, '401(k) Contribution', 150.00),
    (29, 29, 'Health Insurance', 100.00),
    (30, 30, '401(k) Contribution', 150.00);


SELECT e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;
#Subquery to find employees who have worked more than 40 hours in a week:
SELECT * 
FROM Employees 
WHERE EmployeeID IN (
    SELECT EmployeeID 
    FROM Timecards 
    GROUP BY EmployeeID 
    HAVING SUM(HoursWorked) > 40
);






# description of tables
desc employees;
desc departments;
desc salaries;
desc timecards;
desc Deductions;


#Show all the tables

SELECT * FROM Employees;

SELECT * FROM Departments;


SELECT * FROM Salaries;


SELECT * FROM Timecards;

 SELECT * FROM Deductions;
 
##Subqueries:

-- The first name and last name of each employee in the Marketing department.
SELECT E.FirstName, E.LastName
FROM Employees AS E
JOIN Departments AS D ON E.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Marketing';

-- find the employee names end with a

SELECT FirstName, LastName
FROM Employees
WHERE LastName LIKE '%a';


## 1 find employees earning more than the average salary:
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);
## 2  find employees with the highest salary
 SELECT * 
FROM Employees 
WHERE Salary = (
    SELECT MAX(Salary) 
    FROM Employees
);
## 2  find the department with the highest average salary:
SELECT DepartmentName, AVG(Salary) AS AvgSalary
FROM Departments
INNER JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID
GROUP BY DepartmentName
HAVING AVG(Salary) = (SELECT MAX(AvgSalary) FROM (SELECT AVG(Salary) AS AvgSalary FROM Departments INNER JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID GROUP BY DepartmentName) AS DeptAvgSalary);

##3  find employees with the highest salary in each department:
SELECT EmployeeID, FirstName, LastName, Salary, DepartmentID
FROM Employees e1
WHERE Salary = (SELECT MAX(Salary) FROM Employees e2 WHERE e1.DepartmentID = e2.DepartmentID);

## 4 find employees who have not recorded any timecards:
SELECT EmployeeID, FirstName, LastName
FROM Employees
WHERE EmployeeID NOT IN (SELECT DISTINCT EmployeeID FROM Timecards);

## 5 find employees with deductions greater than $200:
SELECT EmployeeID, FirstName, LastName
FROM Employees
WHERE EmployeeID IN (SELECT EmployeeID FROM Deductions GROUP BY EmployeeID HAVING SUM(Amount) > 200);

##Joins:
-- Basic Join:
-- Retrieve the first name, last name, and department name of all employees.

SELECT e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- Inner Join with Condition:
-- Retrieve the first name, last name, and salary of employees who work in the Finance department.

SELECT e.FirstName, e.LastName, s.Salary
FROM Employees e
JOIN Salaries s ON e.EmployeeID = s.EmployeeID
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Finance';




-- Basic Join:
-- Retrieve the first name, last name, and department name of all employees.

SELECT e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;
-- Inner Join with Condition:
-- Retrieve the first name, last name, and salary of employees who work in the Finance department.

SELECT e.FirstName, e.LastName, s.Salary
FROM Employees e
JOIN Salaries s ON e.EmployeeID = s.EmployeeID
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Finance';



-- Left Join:
-- Retrieve the first name, last name, and department name of all employees, including those who don't have a department assigned.

SELECT e.FirstName, e.LastName, COALESCE(d.DepartmentName, 'No Department Assigned') AS DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;


## right join 
-- Retrieve the first name, last name, and department name of all departments, including those that don't have any employees assigned to them.

SELECT e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID;



##Self Join:
## Retrieve the first name, last name, and manager's first name and last name for each employee. Assume that the manager of an employee is another employee from the same department who has a higher EmployeeID.

SELECT e.FirstName, e.LastName, m.FirstName AS ManagerFirstName, m.LastName AS ManagerLastName
FROM Employees e
LEFT JOIN Employees m ON e.DepartmentID = m.DepartmentID AND e.EmployeeID < m.EmployeeID;

-- Multiple Joins:
-- write sql querie to find  the first name, last name, department name, and salary of all employees along with their respective timecards.

SELECT e.FirstName, e.LastName, d.DepartmentName, s.Salary, t.HoursWorked, t.WorkDate
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
LEFT JOIN Salaries s ON e.EmployeeID = s.EmployeeID
LEFT JOIN Timecards t ON e.EmployeeID = t.EmployeeID;











