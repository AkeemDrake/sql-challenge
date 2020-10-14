-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE departments (
    dept_no VARCHAR(30)   NOT NULL,
    dept_name VARCHAR(30)   NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INTEGER   NOT NULL,
    dept_no VARCHAR(30)   NOT NULL,
    from_date VARCHAR(30)   NOT NULL
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(30)   NOT NULL,
    emp_no INTEGER   NOT NULL,
    from_date VARCHAR(250)   NOT NULL,
    to_date VARCHAR(250)   NOT NULL
);

CREATE TABLE employees (
    emp_no INTEGER   NOT NULL,
    birth_date VARCHAR(250)   NOT NULL,
    first_name VARCHAR(30)   NOT NULL,
    last_name VARCHAR(30)   NOT NULL,
    gender VARCHAR(30)   NOT NULL,
    hire_date VARCHAR(250)   NOT NULL
);

CREATE TABLE salaries (
    emp_no INTEGER   NOT NULL,
    salary INTEGER   NOT NULL,
    from_date VARCHAR(250)   NOT NULL,
    to_date VARCHAR(250)   NOT NULL
);

CREATE TABLE titles (
    title VARCHAR(100)   NOT NULL,
    from_date VARCHAR(250)   NOT NULL,
    to_date VARCHAR(250)   NOT NULL
);

