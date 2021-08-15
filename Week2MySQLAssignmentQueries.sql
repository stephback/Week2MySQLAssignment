############### Week 2 MySQL Code Assignment Queries ###############

1. I want to know how many employees with each title were born after 1965-01-01.

SELECT 
	titles.title AS "Title", 
	COUNT(titles.title) AS "Employees Per Title" 
FROM 
	employees 
INNER JOIN 
	titles ON employees.emp_no = titles.emp_no 
WHERE 
	titles.to_date = '9999-01-01' AND employees.birth_date > '1965-01-01' 
GROUP BY titles.title; 


2. I want to know the average salary per title.

SELECT
    titles.title AS "Title",
    AVG(salaries.salary) AS "Average Salary"
FROM
    salaries
INNER JOIN
    titles ON salaries.emp_no = titles.emp_no
WHERE
    salaries.to_date = '9999-01-01' AND titles.to_date = '9999-01-01'
GROUP BY
    titles.title;


3. How much money was spent on salary for the marketing department between the years 1990 and 1992?


SELECT
	d.dept_name AS "Department", 
	SUM(s.salary) AS "Sum of Salaries 1990 - 1992"
FROM
	departments d
INNER JOIN
	dept_emp de ON de.dept_no = d.dept_no
INNER JOIN
	salaries s ON s.emp_no = de.emp_no
WHERE 
	d.dept_name = 'Marketing' AND
	de.from_date >= '1990-01-01' AND
	de.to_date <= '1992-12-31'
GROUP BY
	d.dept_name; 
	
############### End of Week 2 SQL Assignment Queries ###############