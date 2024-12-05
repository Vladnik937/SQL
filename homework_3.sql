-- Задание 3

-- 1) Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
Select employees.employee_name, salary.monthly_salary FROM employees -- employees e
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id;


-- 2) Вывести всех работников у которых ЗП меньше 2000.
SELECT employees.employee_name, salary.monthly_salary FROM employees -- employees e
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
WHERE salary.monthly_salary < 2000;


-- 3) Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
SELECT employees.employee_name, salary.monthly_salary FROM employees -- employees e
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE employees.employee_name is null;


-- 4) Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но непонятно кто её получает.)
SELECT employees.employee_name, salary.monthly_salary FROM employees -- employees e
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE employees.employee_name is null and salary.monthly_salary < 2000;


-- 5) Найти всех работников кому не начислена ЗП.
SELECT employees.employee_name, salary.monthly_salary FROM employees -- employees e
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE salary.monthly_salary is null;


-- 6) Вывести всех работников с названиями их должности.
SELECT employees.employee_name, roles.role_name FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id;


-- 7) Вывести имена и должность только Java разработчиков.
SELECT employees.employee_name, roles.role_name FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name LIKE '%Java%';


-- 8) Вывести имена и должность только Python разработчиков.
SELECT employees.employee_name, roles.role_name FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name LIKE '%Python%';


-- 9) Вывести имена и должность всех QA инженеров
SELECT employees.employee_name, roles.role_name FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name LIKE '%QA%';


-- 10) Вывести имена и должность ручных QA инженеров.
SELECT employees.employee_name, roles.role_name FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name LIKE '%Manual QA%';


-- 11) Вывести имена и должность автоматизаторов QA
SELECT employees.employee_name, roles.role_name FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
WHERE roles.role_name LIKE '%Automation QA%';


-- 12) Вывести имена и зарплаты Junior специалистов
SELECT employees.employee_name, roles.role_name, salary.monthly_salary FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%Junior%';


-- 13) Вывести имена и зарплаты Middle специалистов
SELECT employees.employee_name, roles.role_name, salary.monthly_salary FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%Middle%';


-- 14) Вывести имена и зарплаты Senior специалистов
SELECT employees.employee_name, roles.role_name, salary.monthly_salary FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%Senior%';


-- 15) Вывести зарплаты Java разработчиков
SELECT roles.role_name, salary.monthly_salary FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%Java%';


-- 16) Вывести зарплаты Python разработчиков
SELECT roles.role_name, salary.monthly_salary FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%Python%';


-- 17) Вывести имена и зарплаты Junior Python разработчиков
SELECT employees.employee_name, roles.role_name, salary.monthly_salary FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%Junior Python%';


-- 18) Вывести имена и зарплаты Middle JS разработчиков
SELECT employees.employee_name, roles.role_name, salary.monthly_salary FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%Middle JavaScript%';


-- 19) Вывести имена и зарплаты Senior Java разработчиков
SELECT employees.employee_name, roles.role_name, salary.monthly_salary FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%Senior Java%';


-- 20) Вывести зарплаты Junior QA инженеров
SELECT roles.role_name, salary.monthly_salary FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%Junior%' and roles.role_name LIKE '%QA%';
-- WHERE roles.role_name LIKE '%Junior%QA%';


-- 21) Вывести среднюю зарплату всех Junior специалистов
SELECT AVG(salary.monthly_salary) as average_junior_salary FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%Junior%';


-- 22) Вывести сумму зарплат JS разработчиков
SELECT SUM(salary.monthly_salary) AS summary_js_dev FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%JavaScript%';


-- 23) Вывести минимальную ЗП QA инженеров
SELECT Min(salary.monthly_salary) AS min_salary_qa FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%QA%';


-- 24) Вывести максимальную ЗП QA инженеров
SELECT Max(salary.monthly_salary) AS max_salary_qa FROM employees
full JOIN roles_employee ON employees.id = roles_employee.employee_id
full JOIN roles ON roles.id = roles_employee.role_id
full JOIN employee_salary ON employees.id = employee_salary.employee_id
full JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%QA%';


-- 25) Вывести количество QA инженеров
SELECT COUNT(id) AS qa FROM roles
WHERE roles.role_name LIKE '%QA%';


-- 26) Вывести количество Middle специалистов.
SELECT COUNT(id) AS middle FROM roles
WHERE roles.role_name LIKE '%Middle%';


-- 27) Вывести количество разработчиков
SELECT COUNT(id) AS dev FROM roles
WHERE roles.role_name LIKE '%developer%';


-- 28) Вывести фонд (сумму) зарплаты разработчиков.
SELECT SUM(salary.monthly_salary) AS summary_salary_dev FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
WHERE roles.role_name LIKE '%developer%';


-- 29) Вывести имена, должности и ЗП всех специалистов по возрастанию
SELECT employees.employee_name, roles.role_name, salary.monthly_salary FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
WHERE salary.monthly_salary < 2300  
order by salary.monthly_salary asc;


-- 30) Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
SELECT employees.employee_name, roles.role_name, salary.monthly_salary FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
WHERE salary.monthly_salary between 1700 and 2300  
order by salary.monthly_salary asc;


-- 31) Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
SELECT employees.employee_name, roles.role_name, salary.monthly_salary FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
WHERE salary.monthly_salary < 2300  
order by salary.monthly_salary asc;


-- 32) Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
SELECT employees.employee_name, roles.role_name, salary.monthly_salary FROM employees
JOIN roles_employee ON employees.id = roles_employee.employee_id
JOIN roles ON roles.id = roles_employee.role_id
JOIN employee_salary ON employees.id = employee_salary.employee_id
JOIN salary ON salary.id = employee_salary.salary_id
WHERE salary.monthly_salary in (1100, 1500, 2000) 
order by salary.monthly_salary asc;