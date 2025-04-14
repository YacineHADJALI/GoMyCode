select Name, count(Project_Num_P) as number_of_projects
from Employee join Employee_Project on Employee.Num_E = Employee_Project.Employee_Num_E
group by Name
having count(Project_Num_P) > 1

select Label, Manager_Name, Title
from Department join Project on Department.Num_S = Project.Department_Num_S

select Name, Role
from Employee
	join Employee_Project on Employee.Num_E = Employee_Project.Employee_Num_E
	join Project on Employee_Project.Project_Num_P = Project.Num_P
where Title = 'Website Redesign'

select top 1 Label, Manager_Name, count(Num_E) as number_of_employees
from Department join Employee on Department.Num_S = Employee.Department_Num_S
group by Label, Manager_Name
order by count(Num_E) desc

select Name, Position, Label
from Employee join Department on Employee.Department_Num_S = Department.Num_S
where Salary > 60000

select Title, count(Employee_Num_E) as number_of_employees
from Project join Employee_Project on Project.Num_P = Employee_Project.Project_Num_P
group by Title

select Name, Title, Role
from Employee
	join Employee_Project on Employee.Num_E = Employee_Project.Employee_Num_E
	join Project on Employee_Project.Project_Num_P = Project.Num_P

select Label, Manager_Name, sum(Salary) as total_salary_expenditure
from Department join Employee on Department.Num_S = Employee.Department_Num_S
group by Label, Manager_Name
