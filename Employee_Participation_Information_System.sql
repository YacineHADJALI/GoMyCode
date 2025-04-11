create table Department (
  Num_S int primary key,
  Laber varchar(255),
  Manager_Name varchar(255))
  
create table Employee (
  Num_E int primary key,
  Name varchar(255),
  Position varchar(255),
  Salary decimal(10,2),
  Department_Num_S int,
  foreign key (Department_Num_S) references Department(Num_S))

create table Project (
  Num_P int primary key,
  Title varchar(255),
  Start_Date date,
  End_Date date,
  Department_Num_S int,
  foreign key (Department_Num_S) references Department(Num_S))

create table Employee_Project (
  Employee_Num_E int,
  Project_Num_P int,
  Role varchar(255),
  foreign key (Employee_Num_E) references Employee(Num_E),
  foreign key (Project_Num_P) references Project(Num_P),
  primary key (Employee_Num_E,Project_Num_P))
