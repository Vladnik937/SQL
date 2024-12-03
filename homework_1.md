Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null

```sql
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL
);
```

Наполнить таблицу employee 70 строками
```sql
INSERT INTO employees (employee_name) VALUES
('Александр'), ('Мария'), ('Дмитрий'), ('Анна'), ('Иван'), ('Екатерина'), ('Сергей'), ('Ольга'), ('Андрей'), ('Елена'),
('Максим'), ('Татьяна'), ('Алексей'), ('Наталья'), ('Владимир'), ('Ирина'), ('Павел'), ('Юлия'), ('Егор'), ('Ксения'),
('Николай'), ('Алина'), ('Михаил'), ('Дарья'), ('Кирилл'), ('Маргарита'), ('Олег'), ('Полина'), ('Игорь'), ('Вероника'),
('Роман'), ('Виктория'), ('Василий'), ('Светлана'), ('Владислав'), ('Анастасия'), ('Артем'), ('Лариса'), ('Георгий'), ('Евгения'),
('Леонид'), ('Валерия'), ('Борис'), ('Вера'), ('Антон'), ('Марина'), ('Григорий'), ('Зоя'), ('Степан'), ('Людмила'),
('Константин'), ('Кристина'), ('Виталий'), ('Елизавета'), ('Федор'), ('Оксана'), ('Арсений'), ('Алёна'), ('Никита'), ('София'),
('Геннадий'), ('Любовь'), ('Вячеслав'), ('Арина'), ('Денис'), ('Аделина'), ('Илья'), ('Олеся'), ('Евгений'), ('Диана');
```


```sql
select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;
```

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
```sql
create table salary (
	id SERIAL primary KEY,
	monthly_salary int not null
);
```

Наполнить таблицу salary 16 строками:
```sql
INSERT INTO salary (monthly_salary) VALUES
(1000), (1100), (1200), (1300), (1400), (1500), (1600), (1700), 
(1800), (1900), (2000), (2100), (2200), (2300), (2400), (2500);
```

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
```sql
create table employee_salary (
	id SERIAL primary KEY,
	employee_id int not null unique,
	salary_id int not null
);
```

Наполнить таблицу employee_salary 40 строками:
```sql
INSERT INTO employee_salary (employee_id, salary_id) VALUES
(15, 5),
(3, 3),
(27, 11),
(6, 6),
(10, 10),
(23, 7),
(1, 1),
(16, 16),
(30, 14),
(12, 12),
(2, 2),
(20, 4),
(8, 8),
(18, 2),
(14, 14),
(28, 12),
(9, 9),
(4, 4),
(21, 5),
(5, 5),
(13, 13),
(7, 7),
(29, 13),
(25, 9),
(19, 3),
(22, 6),
(11, 11),
(26, 10),
(17, 1),
(24, 8);
```

- в 10 строк из 40 вставить несуществующие employee_id
```sql
INSERT INTO employee_salary (employee_id, salary_id) VALUES
(100, 1), (101, 2), (102, 3), (103, 4), (104, 5),
(105, 6), (106, 7), (107, 8), (108, 9), (109, 10);
```

Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
```sql
create  table roles (
	id SERIAL primary key,
	role_name int not null unique
);
```

Поменять тип столба role_name с int на varchar(30)
```sql
ALTER TABLE roles
    ALTER COLUMN role_name TYPE VARCHAR(30);
```

Наполнить таблицу roles 20 строками:
```sql
insert into roles (role_name) values 
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');
```

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
```sql
create  table roles_employee (
	id SERIAL primary key,
	employee_id int not null unique,
	role_id int not null,
	FOREIGN KEY (employee_id) REFERENCES employees(id),
    FOREIGN KEY (role_id) REFERENCES roles(id)
);
```

Наполнить таблицу roles_employee 40 строками:
```sql
INSERT INTO roles_employee (employee_id, role_id) VALUES
(1, 2),
(2, 4),
(3, 9),
(4, 13),
(5, 4),
(6, 2),
(7, 9),
(8, 13),
(9, 3),
(10, 4),
(11, 7),
(12, 1),
(13, 6),
(14, 11),
(15, 14),
(16, 16),
(17, 2),
(18, 5),
(19, 10),
(20, 4),
(21, 7),
(22, 8),
(23, 1),
(24, 9),
(25, 13),
(26, 2),
(27, 4),
(28, 3),
(29, 5),
(30, 7),
(31, 8),
(32, 11),
(33, 6),
(34, 2),
(35, 14),
(36, 7),
(37, 6),
(38, 13),
(39, 5),
(40, 9);
```
