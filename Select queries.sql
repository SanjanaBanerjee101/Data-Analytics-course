# for selecting and displaying everything in the table
SELECT * 
FROM employee_demographics;

# for selecting and displaying certain columns in the table
SELECT first_name,last_name
FROM employee_demographics;

# for selecting and displaying certain columns and also perform mathematical operations in the table
SELECT age, (age+10)*100
FROM employee_demographics;

# for selecting and displaying distinct rows in the columns
SELECT DISTINCT first_name 
FROM employee_demographics;
SELECT DISTINCT gender 
FROM employee_demographics;