# HAVING CLAUSE is helpful when we are trying to put conditions on columns where we performed aggreagate functions after grouping them 
#Where clause doesnt work in this scenario.....itis used to filter at row level only

#Using HAVING clause
SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
HAVING AVG(salary)>10000;

#Using HAVING clause with WHERE clause
SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary)>10000;

#HAVING CLAUSE is mainly used to filter out rows from aggregated function columns 

# LIMIT - limiting the number of rows to be displayed in the output
SELECT *
FROM employee_demographics
LIMIT 3; 

# LIMIT - limiting the number of rows starting from the first given no. till the second given no. of rows, to be displayed in the output
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3,4; 

#ALIASING - AS Cluase uasuage to give a column name(used for aggregate func columns preferably)
# writing as isnt mandatory, one can just write the desired column name beside the aggregate function
SELECT gender, AVG(age) avg_age
FROM employee_demographics
GROUP BY gender;