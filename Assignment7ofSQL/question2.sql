UPDATE pub_employees
SET emp_name = LTRIM(REPLACE(emp_name, 'Mr. ', ''))
WHERE emp_name LIKE 'Mr. %';