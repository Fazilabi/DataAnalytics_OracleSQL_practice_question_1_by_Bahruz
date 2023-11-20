--Question by Bahruz 16.11.2023
--1
select job_title, (max_salary-min_salary) as diff from hr.jobs
where max_salary between 12000 and 18000

--2
select * from hr.employees
where commission_pct is null 
and salary between 7000 and 12000 
and department_id not in (50,30,80)

--3
select first_name|| ' '|| last_name as FULL_NAME,salary, hire_date, commission_pct, email ||'-'|| phone_number 
as CONTACT
from hr.employees
where salary > 11000
order by first_name|| ' '|| last_name desc

--4
select first_name|| ' '|| last_name as FULL_NAME,salary, hire_date from hr.employees
where first_name like '%m' and hire_date<'5-jun-2005'

--5
select * from hr.departments
where department_id = 20

--6
select * from hr.job_history
order by employee_id desc, start_date asc

--7
select job_id, salary, hire_date, phone_number from hr.employees
where (phone_number like'515%' or phone_number like '590%')
and EXTRACT(year from hire_date)>'2003'
order by salary asc

--8
select * from hr.employees
where extract(year from hire_date)=2001

--9
select first_name||' '|| last_name as FULL_NAME, hire_date from hr.employees
where hire_date<'01-jan-2006' or hire_date>'31-dec-2007'

--10
select email, job_id, first_name,  hire_date from hr.employees
where extract(year from hire_date)=2007 or extract (month from hire_date) =1 

--11
select * from hr.employees
where extract(year from hire_date)>2007 or salary <10000


