insert into Department values (
  (1, "IT", "Alice Johnson"),
  (2, "HR", "Bob Smith"),
  (3, "Marketing", "Clara Bennett"))

insert into Employee values (
  (101, "John Doe", "Developer", 60000, 1),
  (102, "Jane Smith", "Analyst", 55000, 2),
  (103, "Mike Brown", "Designer", 50000, 3),
  (104, "Sarah Johnson", "Data Scientist", 70000, 1),
  (105, "Emma Wilson", "HR Specialist", 52000, 2))

insert into Project values (
  (201, "Website Redesign", "2024-01-15", "2024-06-30", 1),
  (202, "Employee Onboarding", "2024-03-01", "2024-09-01", 2),
  (203, "Market Research", "2024-02-01", "2024-07-31", 3),
  (204, "IT Infrastructure Setup", "2024-04-01", "2024-12-31", 1))

insert into Employee_Project values (
  (101, 201, "Frontend Developer"),
  (104, 201, "Backend Developer"),
  (102, 202, "Trainer"),
  (105, 202, "Coordinator"),
  (103, 203, "Research Lead"),
  (101, 204, "Network Specialist"))

update Employee_Project
set Role = "Full Stack Developer"
where Employee_Num_E = 101

delete from Employee_Project
where Employee_Num_E = 103

delete from Employee
where Num_E = 103
