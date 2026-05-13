-- Estudo da estrutura WHERE
SELECT last_name, job_id, department_id
FROM employees
WHERE department_id = 80;

SELECT region_id, region_name
FROM regions
WHERE region_name='Europe'; -- tem que ser com aspas simples

SELECT last_name, job_id, department_id, hire_date
FROM employees
WHERE hire_date='21-jun-2007'; -- para o formato data, o formato tem que ser dia-mes-ano. Se for diferente pode quebrar.ALTER

-- 1. Write a query to display the last name and department number for employee number 176. 

SELECT last_name, department_id, employee_id
FROM employees
WHERE employee_id=176;

-- 2. Write a query to display all columns of only country name india from countries table

SELECT *
FROM countries
WHERE country_name = 'India';

-- 3. Write a query to display location ID, Street Address and the city of location number
-- 1000
SELECT location_id, street_address, city
FROM locations
WHERE location_id = 1000;

-- 4. Write a query to display department ID, department Name, manager ID of department
-- name marketing
SELECT department_id, department_name, manager_id
FROM departments
WHERE department_name='Marketing';

-------------------------------------------------------

SELECT department_id, department_name, manager_id, location_id
FROM departments
WHERE department_id >=90;

SELECT department_id, department_name, manager_id, location_id
FROM departments
WHERE location_id in (1800,2700); -- no "in" pode vir uma lista "()"

SELECT last_name, salary, department_id
FROM employees
WHERE salary BETWEEN 4900 AND 7000; -- Retorna valores entre 4900(mínimo) e 7000(máximo)

SELECT last_name, salary, department_id
FROM employees
WHERE last_name LIKE 'M%'; 
-- LIKE é um operador usado para procurar uma string ou conjunto de strings
-- o "%" é utilizado para dizer que pode haver outros caracteres depois do preestabelecido
-- o "_" representa apenas um caractere (pelo que eu entendi, verificar!!!!!)


