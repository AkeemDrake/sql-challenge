--1.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
FULL JOIN salaries AS s
	ON e.emp_no = s.emp_no;
	
--2.
SELECT emp_no, hire_date
FROM employees
WHERE hire_date LIKE '%1986';


--3.
SELECT departments.dept_name, dept_manager.dept_no, employees.first_name, 
employees.last_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
JOIN departments
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;




--4.
SELECT dept_emp.emp_no, departments.dept_name, employees.first_name, employees.last_name
FROM dept_emp
JOIN departments
ON dept_emp.dept_no = departments.dept_no
JOIN employees
ON dept_emp.emp_dept_id = employees.employee_id;



--5. 
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. 
SELECT dept_emp.emp_no, departments.dept_name, employees.first_name, employees.last_name
FROM dept_emp
JOIN departments
ON dept_emp.dept_no = departments.dept_no
JOIN employees
ON dept_emp.emp_dept_id = employees.employee_id
WHERE dept_name = 'Sales';

--7.
SELECT dept_emp.emp_no, departments.dept_name, employees.first_name, employees.last_name
FROM dept_emp
JOIN departments
ON dept_emp.dept_no = departments.dept_no
JOIN employees
ON dept_emp.emp_dept_id = employees.employee_id
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--8.
SELECT last_name, COUNT(last_name) AS "number of last names"
FROM employees
GROUP BY last_name
ORDER BY "number of last names" DESC;