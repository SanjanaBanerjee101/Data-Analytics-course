# WHERE CLAUSE WITH COMPARISON OPERATORS, LOGICAL OPERATORS AND LIKE & UNDERSCORE STATEMENTS

# for filtering rows only with the first name "LESLIE"
SELECT * 
FROM employee_demographics
WHERE first_name = 'Leslie';

# for filtering rows only with salary exactly 50000 as we use "=" comparison operator here
SELECT * 
FROM employee_salary
WHERE salary = 50000;

# for filtering rows only with salary 50000 and greater as we use ">=" comparison operator here, we can also use "<,>,<=" operators
SELECT * 
FROM employee_salary
WHERE salary >= 50000;

# for filtering rows only with gender which is not "FEMALE"
SELECT * 
FROM employee_demographics
WHERE gender != 'Female';

# AND , OR, OR NOT LOGICAL OPERATORS
# both the conditions have to be satisfied in AND op
SELECT * 
FROM employee_demographics
WHERE gender = 'Female'
AND age > 34;

# any one of the conditions have to be satisfied in OR op
SELECT * 
FROM employee_demographics
WHERE gender = 'Female'
OR age > 34;

# we can have a mix of both the conditions ; the bracket helps the query to be executed following the BODMAS rule
SELECT * 
FROM employee_demographics
WHERE (gender = 'Female' AND employee_id > 5)
OR age > 34;

# LIKE, UNDERSCORE OPERATORS
#for finding out values starting with the given letter/letters and ending wih anything after that
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a%';

##for finding out values ending with the given letter/letters and starting wih anything before that
SELECT * 
FROM employee_demographics
WHERE first_name LIKE '%e';


#for finding out values starting with the anything and ending wih anything but having the given letter/letters in between that
SELECT * 
FROM employee_demographics
WHERE first_name LIKE '%e%';

#for finding out values starting with given letter/letters and having exactly the same amount of letters as per thenumber of underscores used after that
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a__';

#for finding out values starting with given letter/letters and having exactly the same amount of letters as per the number of underscores used after that and having anything after that
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a__%';



