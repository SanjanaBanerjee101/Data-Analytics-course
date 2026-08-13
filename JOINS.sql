# INNER JOIN---

#In inner join, we dont neccesarily write the word INNER JOIN as writing JOIN by default means INNER JOIN.
#In joins , the column which is having common data in both the tables are used as the reference . not the column name.
#in inner join all the columns from both the tables are joined together and displayed along with the reference column repeating itself
#but the only the rows which is present in both the tables is shown ....any odd row is eliminated in the new joined table


SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
#to display specific columns, the table must be mentioned in case of common columns in both the tables.
SELECT dem.employee_id, salary, age
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
    
# OUTER JOINS --- RIGHT OUTER JOIN OR LEFT OUTER JOIN

#in right join we take all the rows of the right table and only the ones matching from the left table  
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
#in left join we take all the rows of the left table and only the ones matching from the right table 
SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
    
#SELF JOIN -- we just write JOIN for this

#in self join we are joining the same table with themselves --- helps in modifying the same table and joining it with itself
#to get a different joined pair

#simple self join
SELECT *
FROM employee_salary AS sal1
JOIN employee_salary AS sal2
	ON sal1.employee_id = sal2.employee_id;
 
SELECT *
FROM employee_salary AS sal1
JOIN employee_salary AS sal2
	ON sal1.employee_id + 1 = sal2.employee_id;
    
SELECT sal1.employee_id AS emp_manager,
sal1.first_name AS firstname_manager,
sal1.last_name AS lastname_manager,
sal2.employee_id AS emp_worker,
sal2.first_name AS firstname_worker,
sal2.last_name AS lastname_worker
FROM employee_salary AS sal1
JOIN employee_salary AS sal2
	ON sal1.employee_id + 1 = sal2.employee_id;
    
    
    
#JOINING MULTIPLE TABLES ----

# The main usuage is even if two tables have no common columns in them 
#but a third table has common columns for both, then all the three tables will be able to joined into one new table

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS park
	ON sal.dept_id = park.department_id;
    
#Here parks_departments table is mainly a reference table. These type of tables usually dont have duplicates as they dont rapidly change.

    
    