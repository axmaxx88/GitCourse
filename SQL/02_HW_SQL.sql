					--SQL_DDL_Joins

					--Таблица employees

					--1) Создать таблицу employees
					-- - id. serial,  primary key,
					-- - employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

					--2) Наполнить таблицу employees 70 строками

insert into employees(employee_name)
values ('John Gomez'),
	('Matthew Copeland'),
	('Stacy Anderson'),
	('Robert Lane'),
	('Michael Gordon'),
	('Thomas Andrews'),
	('Donna Thompson'),
	('Phillip Brown'),
	('Anna Johnson'),
	('Mattie Moss'),
	('Lawrence Taylor'),
	('Marsha Byrd'),
	('Dennis Meyer'),
	('Rebecca Mitchell'),
	('Olga Huff'),
	('Raymond Palmer'),
	('Kathleen Ramirez'),
	('John Welch'),
	('Roy Myers'),
	('Richard Coleman'),
	('Raymond White'),
	('Richard Parker'),
	('Nathan Garrett'),
	('Robert Smith'),
	('Samuel Hoffman'),
	('Donna Sullivan'),
	('Paula Higgins'),
	('Charles Love'),
	('Donald Duncan'),
	('Kenneth Olson'),
	('Margie Johnson'),
	('Mark Cortez'),
	('Donald Patterson'),
	('Lynn Rogers'),
	('Christopher Wilson'),
	('Brian Floyd'),
	('Lisa Coleman'),
	('Charles Howard'),
	('Ray Davidson'),
	('Michele Bridges'),
	('George Warren'),
	('Barbara King'),
	('Shane Morton'),
	('Dawn Gomez'),
	('John Graves'),
	('Stephen Martin'),
	('Pamela Jackson'),
	('Jennifer James'),
	('Bradley Bishop'),
	('Troy Stone'),
	('Sherry Wilson'),
	('Reginald Gray'),
	('Byron Wells'),
	('Judy Soto'),
	('Martin Roberson'),
	('Michelle Wilkins'),
	('Anne Miller'),
	('Ruth Page'),
	('Rose Rose'),
	('Melinda Hill'),
	('Emily Smith'),
	('David Thompson'),
	('Justin Ortega'),
	('Ruth Johnson'),
	('Carlos Pierce'),
	('Evelyn Johnson'),
	('Ronald Adams'),
	('Edith Thompson'),
	('Shirley Hernandez'),
	('Ruth Baker');


					--Таблица salary

					--3) Создать таблицу salary
					-- id, serial, primary key
					-- monthly_salary, int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null
);

					--4) Наполнить таблицу salary 16 строками:
					-- 1000
					-- 1100
					-- 1200
					-- 1300
					-- 1400
					-- 1500
					-- 1600
					-- 1700
					-- 1800
					-- 1900
					-- 2000
					-- 2100
					-- 2200
					-- 2300
					-- 2400
					-- 2500

insert into salary(monthly_salary)
values ('1000'),
	('1100'),
	('1200'),
	('1300'),
	('1400'),
	('1500'),
	('1600'),
	('1700'),
	('1800'),
	('1900'),
	('2000'),
	('2100'),
	('2200'),
	('2300'),
	('2400'),
	('2500');


					--Таблица employee_salary

					--5) Создать таблицу employee_salary
					-- id. Serial  primary key,
					-- employee_id. Int, not null, unique
					-- salary_id. Int, not null

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);


					--6) Наполнить таблицу employee_salary 40 строками:
					-- в 10 строк из 40 вставить несуществующие employee_id

					--id:  				1, 2, 3, 4, 5, 6, 7, 8, 9...
					--employee_id: 		3, 73, 1, 98, 5, 80, 49...
					--salary_id: 		7, 13, 4, 2, 9, 1, 8, 10...

insert into employee(employee_id, salary_id)
values (3, 7),
	(73, 13),
	(1, 4),
	(98, 2),
	(5, 9),
	(80, 1),
	(49, 8),
	(78, 10),
	(23, 11),
	(89, 3),
	(11, 2),
	(91, 5),
	(52, 7),
	(95, 4),
	(68, 8),
	(77, 6),
	(54, 9),
	(99, 1),
	(40, 5),
	(83, 3),
	(13, 6),
	(65, 11),
	(37, 2),
	(28, 10),
	(32, 4),
	(59, 8),
	(19, 6),
	(42, 1),
	(25, 5),
	(61, 7),
	(38, 3),
	(45, 14),
	(22, 12),
	(17, 9),
	(35, 13),
	(62, 10),
	(16, 2),
	(10, 15),
	(53, 1),
	(15, 14);

					--Таблица roles

					--7) Создать таблицу roles
					-- id, serial, primary key,
					--role_name int, not null, unique

create table roles (
	id serial primary key,
	role_name int not null unique
);
	
					--8) Поменять тип столбца role_name c int на varchar(30)

alter table roles
alter column role_name type varchar(30);

					--9) Наполнить таблицу roles 20 строками:
					--id 		--role_name
					
					--1			Junior Python developer
					--2			Middle Python developer
					--3			Senior Python developer
					--4			Junior Java developer
					--5			Middle Java developer
					--6			Senior Java developer
					--7			Junior JavaScript developer
					--8			Middle JavaScript developer
					--9			Senior JavaScript developer
					--10		Junior Manual QA engineer
					--11		Middle Manual QA engineer
					--12		Senior Manual QA engineer
					--13		Project Manager
					--14		Designer
					--15		HR
					--16		CEO
					--17		Sales manager
					--18		Junior Automation QA engineer
					--19		Middle Automation QA engineer
					--20		Senior Automation QA engineer

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
	('Senior Automation QA engineer')

					--Таблица roles_employee

					--10) Создать таблицу roles_employee
						-- id, serial, primary key
					-- employee_id, int, not null, unique (внешний ключ для таблицы employees, поле id)
					--role_id, int, not null (внешний ключ для таблицы roles, поле id) 
	
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	foreign key (employee_id)
	references employees(id),
	role_id int not null,
	foreign key (role_id)
	references roles(id)
);

select * from roles_employee
	
					--11) Наполнить таблицу roles_employee 40 строками:

					--id 	--employee_id 	--role_id
										
					--1			7				2
					--2			20				4
					--3			3				9
					--4			5				13
					--5			23				4
					--6			11				2
					--7			10				9
					--8			22				13
					--9			21				3
					--10		34				4
					--11		6				7

insert into roles_employee(employee_id, role_id)
values (2, 2),
	(4, 9),
	(6, 4),
	(7, 13),
	(8, 2),
	(9, 7),
	(12, 11),
	(14, 5),
	(18, 1),
	(20, 2),
	(21, 6),
	(24, 8),
	(26, 9),
	(27, 19),
	(29, 4),
	(30, 12),
	(31, 13),
	(33, 10),
	(34, 2),
	(36, 1),
	(39, 18),
	(41, 6),
	(43, 9),
	(44, 15),
	(46, 17),
	(47, 16),
	(48, 14),
	(50, 12),
	(51, 13),
	(55, 10),
	(56, 9),
	(57, 1),
	(58, 3),
	(60, 5),
	(63, 6),
	(64, 7),
	(66, 9),
	(67, 19),
	(69, 20),
	(70, 18)
					
select * from roles_employee
			



