create database employee
use employee


create table employeeTable(
id int primary key identity,
fullname nvarchar(225) not null,
age int check(age>0) not null ,
email nvarchar(225) not null unique,
salary decimal(10,3) not null check(salary>300 and salary<2000),
departmentId int foreign key references department(id)
)

select * from employeeTable
drop table employeeTable

--one to many relation employeetable ile(employee many teref department tek)
create table department(
id int primary key identity,
name nvarchar(225)
)

create table details(
id int primary key identity,
[address] nvarchar(225),
phoneNumber nvarchar(15),
emergencyContact nvarchar(225),
employeeId int foreign key references employeeTable(id) on delete cascade 
)

create table employeeProject(
employeeId int foreign key references employeeTable(id),
projectId int foreign key references projectTable(id)
)

create table projectTable(
id int primary key identity,
name nvarchar(225)
)


-- Insert values into departmentTable
INSERT INTO department VALUES
('Human Resources'),
('Engineering'),
('Marketing'),
('Sales'),
('Finance');

INSERT INTO projectTable VALUES
('Project Alpha'),
('Project Beta'),
('Project Gamma');

INSERT INTO employeeTable VALUES
('Alice Johnson', 30, 'alice.johnson@example.com', 1500.000, 1),
('Bob Smith', 45, 'bob.smith@example.com', 1800.000, 2),
('Charlie Davis', 28, 'charlie.davis@example.com', 1700.000, 2),
('Diana Evans', 35, 'diana.evans@example.com', 1600.000, 3),
('Ethan Harris', 40, 'ethan.harris@example.com', 1900.000, 4);

INSERT INTO details VALUES
('123 Main St', '555-1234', 'John Johnson', 1),
('456 Elm St', '555-5678', 'Jane Smith', 2),
('789 Oak St', '555-9101', 'Sara Davis', 3),
('101 Pine St', '555-1121', 'Mike Evans', 4),
('202 Maple St', '555-1314', 'Laura Harris', 5);
INSERT INTO employeeProject VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 3),
(4, 2),
(5, 3);

