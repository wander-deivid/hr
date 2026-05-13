SELECT *
FROM departments;

SELECT department_id, department_name
FROM departments;

SELECT department_name
FROM departments;

SELECT *
FROM EMPLOYEES;

SELECT department_id, department_name
FROM DEPARTMENTS;

SELECT *
FROM regions;

-- Operações
SELECT last_name, salary, salary*12
FROM employees;

SELECT last_name, salary, department_id, (salary+300)*12
FROM employees;

SELECT last_name, salary, commission_pct, commission_pct*salary
FROM employees;

SELECT last_name, salary, department_id, salary*12, commission_pct, commission_pct*salary
FROM employees; 

-- Os comandos de mudança de nome de coluna pode ser feito com o "as" ou sem.
SELECT last_name as "Sobrenome", department_id as "ID do Departamento", salary*12 as "Salário Anual"
FROM employees;

-- Write a query to display the last name, job ID, hire date for each employee.
-- Provide an alias STARTDATE for HIRE_DATE and NAME for de LAST_NAKMJE column. 

SELECT last_name as "Sobrenome", job_id, hire_date as "Admissão"
FROM employees;

SELECT job_id, job_title as "Title"
FROM jobs;

-- No caso abaixo temos que usar aspas simples para que o seja identificado
-- como caractere literal 
SELECT last_name, first_name, last_name ||', '|| first_name as "Nome do Funcionário"
FROM employees;

SELECT last_name, 1000 as "col1", 'Isso é um teste' as "Col2"
FROM employees;

-- Para nomear colunas é sempre aspas duplas
SELECT last_name || ' recebe ' || salary || ' mensais ' || ' e recebe ' || salary*12 || ' anualmente' as "Coluna de texto"
FROM employees;

-- Abaixo, o objetivo do DISTINCT é trazer valores unicos, similar com unique
SELECT job_id
FROM employees;

SELECT DISTINCT job_id
FROM employees;

-- Comando DESCRIBE é utilizado para mostrar a estrutura da tabela
DESCRIBE regions

DESCRIBE employees

-- 1. Escrever uma rotina que mostre o nome completo, o salário e o departamento
-- em que cada funcionário trabalha

SELECT first_name || ' ' || last_name as "Nome Completo", department_id as "ID do Departamento", salary as "Salário"
FROM employees;

-- 2. Escrever uma rotina que mostre todos os IDs unicos de trabalho da tabela employees
SELECT DISTINCT last_name as "Sobrenome", job_id as " ID do Trabalho"
FROM employees;

-- 3. Use DESCRIBE para mostrar a estrutura da tabela locations e a tabela countries

DESCRIBE locations;
DESCRIBE countries;