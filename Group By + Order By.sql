#GROUP BY helps to group values in required columns only on which aggregate functions can be operated
#ORDER BY helps to sort the values either ascendingly or descendingly as per a certain column 

#grouping values in certain columns 
SELECT  gender
FROM employee_demographics
GROUP BY gender;

#performing aggregate functions after grouping values
SELECT gender, AVG(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;

#LIMIT 0, 1000	Error Code: 1055. Expression #1 of SELECT list is not in GROUP BY clause and contains 
#nonaggregated column 'parks_and_recreation.employee_demographics.employee_id' which is not functionally dependent on columns in 
#GROUP BY clause; this is incompatible with sql_mode=only_full_group_bY
SELECT *
FROM employee_demographics
GROUP BY gender;

#Sorting descendingly
SELECT *
FROM employee_demographics
ORDER BY age DESC;

#Sorting ascendingly
SELECT *
FROM employee_demographics
ORDER BY gender;
