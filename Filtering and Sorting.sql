create database assignment;
use assignment;
create table Employees (
Employee_id int,
Employee_Name varchar(50),
Department varchar(50),
City varchar(50),
Salary int,
Hire_Date date);
insert into Employees (Employee_id, Employee_Name, Department, City, Salary, Hire_Date)
Values
(101, "Rahul Mehta", "Sales", "Delhi", 55000, "2020-04-12"),
(102, "Priya Sharma", "HR","Mumbai", 62000, "2019-09-25"),
(103, "Aman Singh", "IT", "Bengaluru", 72000, "2021-03-10"),
(104, "Neha Patel", "Sales", "Delhi", 48000, "2022-01-14"),
(105, "Karan Joshi", "Marketing", "Pune", 45000, "2018-07-22"),
(106, "Divya Nair", "IT", "Chennai", 81000, "2019-12-11"),
(107, "Raj Kumar", "HR", "Delhi", 60000, "2020-05-28"),
(108, "Simran Kaur", "Finance", "Mumbai", 58000, "2021-08-03"),
(109, "Arjun Reddy", "IT", "Hyderabad", 70000, "2022-02-18"),
(110, "Anjali Das", "Sales", "Kolkata", 51000, "2023-01-15");
select * from Employees where Department in ("IT" , "HR");
select * from Employees where Department in ("IT", "Sales", "Finance");
select * from Employees where Salary BETWEEN 50000 AND 70000;
SELECT *FROM Employees WHERE Employee_Name LIKE 'A%';
SELECT *FROM employees WHERE employee_name LIKE '%an%';
SELECT *FROM employees WHERE (city = 'Delhi' OR city = 'Mumbai') AND salary > 55000;
SELECT *FROM employees WHERE department <> 'HR';
SELECT employee_name, hire_date, department
FROM Employees
WHERE Hire_date BETWEEN '2019-01-01' AND '2022-12-31'
ORDER BY Hire_date ASC;