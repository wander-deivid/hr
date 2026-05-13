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
-- Comparadores

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
-- o "_" representa apenas um caractere que pode ser 0,1,a,v, mas tem que ser apenas um caractere(pelo que eu entendi, verificar!!!!!)

SELECT last_name, salary, department_id
FROM employees
WHERE last_name like '_i%';

SELECT last_name, salary, department_id
FROM employees
WHERE last_name like '_in%';

SELECT last_name, salary, department_id
FROM employees
WHERE last_name like '_il%';

SELECT last_name, salary, department_id
FROM employees
WHERE last_name like '_is%';

SELECT last_name, job_id, department_id
FROM employees
WHERE job_id like 'IT/%' ESCAPE '/'; -- Aqui ele identifica "%" como "%" e não como um conjunto de caracteres qualquer

SELECT last_name, job_id, department_id
FROM employees
WHERE job_id like 'IT%';

SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct is null;

-- A query to display the last name and salary of employees who earn more than
-- $16,000. Save your SQL statement as a file cha_03_01.sql. Run your query.

SELECT last_name, salary
FROM employees
WHERE salary >= 16000;

-- display the last name and the salary for any employee whose salary is in 
-- the range $11000 through $14,000

SELECT last_name as "Sobrenome", salary as "Remuneração"
FROM employees
WHERE salary BETWEEN 11000 AND 14000;

-- Display the last name and the salary of employees who earn a
-- commission

SELECT last_name as "Sobrenome", salary as "Remuneração", commission_pct as "Comissão"
FROM employees
WHERE commission_pct IS NOT null; -- Esse que funciona!

SELECT last_name as "Sobrenome", salary as "Remuneração", commission_pct as "Comissão"
FROM employees
WHERE commission_pct NOT IN (null);

-- Display the department name, manager ID and location ID of
-- departments number 10, 20 and 50

SELECT department_name, manager_id, location_id
FROM departments
WHERE department_id IN (10, 20, 50);

-- Display the last name , department ID of any employee where the third
-- letter of the name is “s.”

SELECT last_name as "Sobrenome", department_id as "Departamento ID"
FROM employees
WHERE last_name LIKE '_' ||'_s%';

SELECT last_name as "Sobrenome", department_id as "Departamento ID"
FROM employees
WHERE last_name LIKE '__s%';

-- Operadores Lógicos
SELECT last_name as "Sobrenome", job_id as "ID do Trabalho", salary as "Remuneração", department_id as "ID do Departamento"
FROM employees
WHERE department_id = 100
AND salary >=7000; 
