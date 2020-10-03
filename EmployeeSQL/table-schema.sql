CREATE TABLE titles (
	title_id varchar primary key,
	title varchar
);

select *
from titles

------------------------------------------------------------------------------------

-- cust_id INTEGER NOT NULL,
--	foreign key (cust_id) references customer(id)


------------------------------------------------------------------------------------

CREATE TABLE salaries (
	emp_no int primary key,
	salary int
);

select *
from salaries

------------------------------------------------------------------------------------

CREATE TABLE departments (
	dept_no varchar primary key,
	dept_name varchar
);

select *
from departments

------------------------------------------------------------------------------------

CREATE TABLE Dept_Emp (
	emp_no int,
	dept_no varchar
);

select *
from Dept_Emp

------------------------------------------------------------------------------------

CREATE TABLE dept_manager (
	dept_no varchar,
	emp_no int primary key
);

select *
from dept_manager

------------------------------------------------------------------------------------
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
	emp_no int primary key,
	emp_title varchar,
	foreign key (emp_title) references titles(title_id),
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date varchar
);

select *
from employees