--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employe_name, monthly_salary from employe_salary 
join employees on employe_salary.employe_id = employees.id
join salary on employe_salary.salary_id = salary.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.

select employe_name, monthly_salary from employe_salary 
join employees on employe_salary.employe_id = employees.id
join salary on employe_salary.salary_id = salary.id
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employe_name, monthly_salary from employe_salary 
left join employees on employe_salary.employe_id = employees.id
join salary on employe_salary.salary_id = salary.id
where employe_name is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employe_name, monthly_salary from employe_salary 
left join employees on employe_salary.employe_id = employees.id
join salary on employe_salary.salary_id = salary.id
where employe_name is null and monthly_salary < 2000;

-- 5. Найти всех работников кому не начислена ЗП.

select * from employees
left join employe_salary  on employees.id=employe_salary.employe_id
where salary_id is null; 


-- 6. Вывести всех работников с названиями их должности.

select employe_name , role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on  roles_employee. role_id = roles.id;

-- 7. Вывести имена и должность только Java разработчиков.

select employe_name , role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on  roles_employee. role_id = roles.id
where role_name like '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.

select employe_name , role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on  roles_employee. role_id = roles.id
where role_name like '%Python developer%';

-- 9. Вывести имена и должность всех QA инженеров.

select employe_name , role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on  roles_employee. role_id = roles.id
where role_name like '%QA engineer%';

-- 10. Вывести имена и должность ручных QA инженеров.

select employe_name , role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on  roles_employee. role_id = roles.id
where role_name like '%Manual QA engineer%';

-- 11. Вывести имена и должность автоматизаторов QA

select employe_name , role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on  roles_employee. role_id = roles.id
where role_name like '%Automation QA engineer%';

-- 12. Вывести имена и зарплаты Junior специалистов

select employe_name,  monthly_salary, role_name from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов

select employe_name,  monthly_salary, role_name from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like 'Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов

select employe_name,  monthly_salary, role_name from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков

select employe_name,  monthly_salary, role_name from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%Java developer%';

-- 16. Вывести зарплаты Python разработчиков

select employe_name,  monthly_salary, role_name from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков

select employe_name,  monthly_salary, role_name from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%Junior Python%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков

select employe_name,  monthly_salary, role_name from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%Middle JavaScript%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков

select employe_name,  monthly_salary, role_name from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%Senior Java%';

-- 20. Вывести зарплаты Junior QA инженеров

select employe_name,  monthly_salary, role_name from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%Junior%QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов

select  avg(monthly_salary) from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков

select   sum(monthly_salary) from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%JavaScript%';

-- 23. Вывести минимальную ЗП QA инженеров

select min(monthly_salary) from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%QA%';

-- 24. Вывести максимальную ЗП QA инженеров

select max(monthly_salary) from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%QA%';

-- 25. Вывести количество QA инженеров

select count(employe_name) from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%QA%';

-- 26. Вывести количество Middle специалистов.

select count(employe_name) from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%Middle%';

-- 27. Вывести количество разработчиков

select count(employe_name) from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary) from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id  
where role_name like '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employe_name, role_name, monthly_salary  from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
order by monthly_salary;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employe_name, role_name, monthly_salary  from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employe_name, role_name, monthly_salary  from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where monthly_salary < 2300
order by monthly_salary;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employe_name, role_name, monthly_salary  from employees
join employe_salary  on employees.id = employe_salary.employe_id 
join salary on employe_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where monthly_salary in (1100,1500,2000)
order by monthly_salary;