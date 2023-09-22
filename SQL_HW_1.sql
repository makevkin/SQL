/*Вывести все поля и все строки*/
select  * from students; 

/*Вывести всех студентов в таблице*/
select name from students; 

/*Вывести только id пользователей*/
select id from students; 

/*Вывести только имя пользователей*/
select name from students; 

/*Вывести только email пользователей*/
select email from students; 

/*Вывести имя и email пользователй*/
select name, email from students; 

/*Вывести id, имя и email пользователй*/
select id, name, email, created_on from students; 

 /*Вывести пользователей, где password 12333*/
select * from students  
where password = '12333';

/*Вывести пользователей, котрые были созданы 2021-03-26 00:00:00*/
select * from students   
where created_on = '2021-03-26 00:00:00';

/*Вывести пользователей, где в имени есть слово Anna*/
select * from students   
where name like  '%Anna%';

/*Вывести пользователей, где в имени в конце есть 8*/
select * from students   
where name like  '%8';

/*Вывести пользователей, где в имени есть буква a*/
select * from students   
where name like  '%a%';

/*Вывести пользователей, которые были созданы 2021-07-12 00:00:00*/
select * from students   
where created_on = '2021-07-12 00:00:00';

/*Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8*/
select * from students   
where created_on = '2021-07-12 00:00:00' and name like '%8%';

/*Вывести пользователя, у которых id равен 110*/
select * from students   
where id = 110;

/*Вывести пользователя, у которых id равен 153*/
select * from students   
where id = 153;


/*Вывести пользователя, у которых id больше 140*/
select * from students   
where id > 140;

/*Вывести пользователя, у которых id меньше 130*/
select * from students   
where id < 130;

/*Вывести пользователя, у которых id меньше 127 или больше 188*/
select * from students   
where id <127 or id> 188;

/*Вывести пользователя, у которых id меньше или равно 137*/
select * from students   
where id <=137;

/*Вывести пользователя, у которых id больше или равно 137*/
select * from students   
where id >=137;

/*Вывести пользователя, у которых id больше 180, но меньше 190*/
select * from students   
where id > 180 and id< 190;

/*Вывести пользователя, у которых id между 180 и 190*/
select * from students   
where id > 180 and id< 190;

/*Вывести пользователей, у которых password равен 12333, 1m313, 123313*/
select * from students  
where password in ('12333','1m313','123313');

/*Вывести пользователей, где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00*/
select * from students  
where created_on  in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

/*Вывести минимальный id*/
select min(id) from students; 

/*Вывести макисмальный id*/
select max(id) from students; 

/*Вывести количество пользователей*/
select count(*)  as Student from students; 

/*Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользователя*/
select id, name, created_on from students
order  by created_on;

/*Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользователя*/
select id, name, created_on from students
order  by created_on desc;
