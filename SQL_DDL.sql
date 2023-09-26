-- 1. Создать таблицу employees:
	id serial primary key
	employee_name, varchar(50), not null

create table employees (
	id serial  primary key,
    employe_name varchar(50) not null
);

-- 2. Наполнить таблицу employees 70 строками

insert into employees (employe_name)
values ('Ксения Акимова'),
	   ('Ольга Андреева'),
	   ('Ева Архипова'),
	   ('Евгений Балашов'),
	   ('Пётр Васильев'),
	   ('Александра Владимирова'),
	   ('Михаил Воробьев'),
	   ('Арина Герасимова'),
	   ('Александр Голиков'),
	   ('Глеб Горбачев'),
	   ('Руслан Грачев'),
	   ('Матвей Гусев'),
	   ('Александра Давыдова'),
	   ('Ева Данилова'),
	   ('Ульяна Денисова'),
	   ('Николай Дмитриев'),
	   ('Елизавета Дмитриева'),
	   ('Андрей Долгов'),
	   ('Даниил Дьяков'),
	   ('Иван Елизаров'),
	   ('Вероника Емельянова'),
	   ('Александр Зотов'),
	   ('Фёдор Иванов'),
	   ('Дмитрий Игнатов'),
	   ('Анна Ильина'),
	   ('Анна Казакова'),
	   ('Маргарита Ковалева'),
	   ('Дарья Козлова'),
	   ('Михаил Крючков'),
	   ('Лука Кузнецов'),
	   ('Егор Ларин'),
	   ('Виктория Левина'),
	   ('Александр Леонов'),
	   ('Ирина Максимова'),
	   ('Иван Мартынов'),
	   ('Алиса Морозова'),
	   ('Ева Никитина'),
	   ('Полина Никитина'),
	   ('Макар Никулин'),
	   ('Анна Новикова'),
	   ('Василий Носов'),
	   ('Илья Озеров'),
	   ('Маргарита Орехова'),
	   ('Павел Павлов'),
	   ('Дмитрий Петров'),
	   ('Савелий Петров'),
	   ('Таисия Покровская'),
	   ('Герман Поляков'),
	   ('Кирилл Пономарев'),
	   ('Григорий Попов'),
	   ('Милана Романова'),
	   ('Анна Русанова'),
	   ('Кира Седова'),
	   ('Арсений Семенов'),
	   ('Дмитрий Семенов'),
	   ('Кира Синицына'),
	   ('Анастасия Синицына'),
	   ('Ксения Смирнова'),
	   ('София Соколова'),
	   ('Екатерина Соловьева'),
	   ('София Сорокина'),
	   ('Анастасия Сорокина'),
	   ('Арина Степанова'),
	   ('Никита Трофимов'),
	   ('Тимофей Трофимов'),
	   ('Мария Федорова'),
	   ('Екатерина Федосеева'),
	   ('Захар Чернышев'),
	   ('Вячеслав Шишкин'),
	   ('Светлана Зверева'),
	   ('Роман Карпов'),
	   ('Кирилл Яковлев');
	
select * from employees;

-- 3. Создать таблицу salary
	id, sarial primary key
	monthly_salary int not null

create table salary(
	id serial  primary key,
 	monthly_salary int not null
);

-- 4. Наполнить таблицу salary 15 строками

insert into salary (monthly_salary)
values (1000),
	   (1100),
	   (1200),
 	   (1300),
 	   (1400),
 	   (1500),
 	   (1600),
	   (1700),
 	   (1800),
 	   (1900),
 	   (2000),
 	   (2100),
 	   (2200),
 	   (2300),
 	   (2400),
	   (2500);
select * from salary;

-- 5. Создать таблицу employee_salary
	id serial primary key
	employee_id int not null, unique
	salary_id, int, not null
 
create table employe_salary (
	id serial primary key,
	employe_id int not null unique,
	salary_id int not null
);
select * from employe_salary;

-- 6. Наполнить таблицу employe_salary 40 строками, в 10 строк из 40 вставить несуществующие eployee_id

insert into employe_salary (employe_id, salary_id)
values  (56,3),
		(22,5),
		(50,11),
		(23,2),
		(40,1),
		(60,8),
		(24,10),
		(41,4),
		(70,2),
		(54,12),
		(61,5),
		(31,4),
		(65,1),
		(66,9),
		(51,14),
		(14,7),
		(38,9),
		(32,6),
		(47,11),
		(26,8),
		(49,2),
		(59,9),
		(58,8),
		(17,3),
		(4,4),
		(39,1),
		(35,7),
		(30,13),
		(16,2),
		(102,5),
		(87,6),
		(99,7),
		(110,1),
		(98,9),
		(200,11),
		(101,2),
		(115,10),
		(199,3),
		(100,1);
		
select * from employe_salary;

-- 7. Создать таблицу roles
	id serial, primary key
	role_name, int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique
);

-- 8. Поменять тип столбца role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30);

-- 9. Наполнить таблицу roles  20 строками

insert into roles(role_name)
values ('Junior Python developer'),
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

-- 10. Создать таблицу roles_employee
	id, serial, primary key
	employee_id int not null, unique (внешний ключ для таблицы employees поле id)
	role_id int, not null (внешний ключ для таблицы rolesб поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id) references employees(id),
	foreign key (role_id) references roles(id)
);
 
-- 11. Наполнить таблицу roles_employee 40 строками

insert into roles_employee(employee_id, role_id)
values (56,3),
		(22,5),
		(50,11),
		(23,2),
		(40,1),
		(60,8),
		(24,10),
		(41,4),
		(70,16),
		(54,12),
		(61,5),
		(31,4),
		(65,15),
		(66,9),
		(51,14),
		(14,7),
		(38,19),
		(32,6),
		(47,11),
		(26,8),
		(49,2),
		(59,16),
		(58,8),
		(17,3),
		(4,4),
		(39,1),
		(35,7),
		(30,13),
		(16,2),
		(13,5),
		(7,6),
		(33,7),
		(10,1),
		(48,9),
		(20,11),
		(37,2),
		(15,10),
		(19,20),
		(43,1);