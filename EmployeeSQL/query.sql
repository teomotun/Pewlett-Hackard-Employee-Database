-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
JOIN salaries AS s
ON (e.emp_no = s.emp_no)
ORDER BY e.emp_no;

-- List employees who were hired in 1986.
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM employees e
JOIN dept_manager AS m
ON (e.emp_no = m.emp_no)
	JOIN departments as d
	ON (m.dept_no = d.dept_no)
	ORDER BY d.dept_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp AS d_e
ON (e.emp_no = d_e.emp_no)
	JOIN departments AS d
	ON (d_e.dept_no = d.dept_no)
	ORDER BY e.emp_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp AS d_e
ON (e.emp_no = d_e.emp_no)
	JOIN departments AS d
	ON (d_e.dept_no = d.dept_no)
	WHERE d.dept_name = 'Sales'
	ORDER BY e.emp_no;
	
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.	
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp AS d_e
ON (e.emp_no = d_e.emp_no)
	JOIN departments AS d
	ON (d_e.dept_no = d.dept_no)
	WHERE d.dept_name IN ('Sales','Development')
	ORDER BY e.emp_no;
	
-- List the frequency count of employee last names in descending order
SELECT last_name, COUNT(last_name) AS count
FROM employees
GROUP BY last_name
ORDER BY count DESC;


