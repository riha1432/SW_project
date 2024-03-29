/*����� ���̺�*/
--select * from employees;

/*�μ� ���̺�*/
--select * from departments;

/*�μ� ���̺��� �μ� id, ��ġ id ��������*/
--select  department_id, 
--        location_id
--from    departments;

/*�μ� ���̺��� ��ġ id, �μ� id ��������*/
--select  location_id, 
--        department_id 
--from    departments;

/*�μ� ���̺��� �μ� id, �μ� id ��������*/
--select  department_id, 
--        department_id 
--from    departments;

/*��� ���̺��� ���̸�, ����, ����+300 ��������*/
--select  last_name,
--        salary,
--        salary + 300
--from    employees;

/*��� ���̺��� ���̸�, ����, 12*����+100 ��������*/
--select  last_name,
--        salary,
--        12 * salary + 100
--from    employees;

/*��� ���̺��� ���̸�, ����, 12*(����+100) ��������*/
--select  last_name,
--        salary,
--        12 *(salary + 100)
--from    employees;

/*��� ���̺��� ���̸�, ����id, ����, �μ�Ƽ���ۼ�Ʈ ��������*/
--select  last_name,
--        job_id,
--        salary,
--        commission_pct
--from    employees;

/*��� ���̺��� ���̸�, 12 * ���� * �μ�Ƽ���ۼ�Ʈ ��������*/
--select  last_name,
--        12 * salary * commission_pct
--from    employees;

-- null���� ���� 0���� ġȯ
--select  last_name,
--        12 * salary * commission_pct,
--        12 * salary * NVL(commission_pct , 0)
--from    employees;

-- ��Ű�� �̸� ����
--select  last_name as name,
--        commission_pct comm
--from    employees;

--select  last_name "Name",
--        salary * 12 "Annual Salary"
--from employees;

--�� ������ ( ���� )
--select  last_name || job_id as "Employees"
--from    employees;

--�����ϸ鼭 �߰� ���� ����
--select last_name || 'is a' || job_id as "Employee Details"
--from employees;

--�ߺ��� ����
--select  department_id
--from    employees;

--select distinct department_id
--from employees;

--1.
--select * 
--from    departments;

--2.
--select employee_id,
--    last_name,
--    job_id,
--    hire_date as "startdate"
--from    employees;

--3.
--select distinct job_id
--from employees;

--4
--select employee_id as Emp,
--    last_name as Employee,
--    job_id as job,
--    hire_date as "HIRE DATA"
--from    employees;

--5.
--select job_id || ',' || last_name as "Employee and Title"
--from employees;

-- ���� �� ���� 
--select employee_id, 
--    last_name, 
--    job_id, 
--    salary    
--from employees
--where salary >= 10000
--and job_id like '%MAN%';

--select employee_id, 
--    last_name, 
--    job_id, 
--    salary    
--from employees
--where salary >= 10000
--or job_id like '%MAN%';

--select last_name,
--    job_id
--from employees
--where job_id
--not in ('IT_PROG', 'ST_CLERK', 'SA_REP');


-- and or ������ �켱����
--select last_name,
--    job_id,
--    salary
--from employees
--where job_id = 'SA_REP'
--or job_id = 'AD_PRES'
--and salary > 15000;

--select last_name,
--    job_id,
--    salary
--from employees 
--where (job_id = 'SA_REP'
--or job_id = 'AD_PRES')
--and salary > 15000;


--����
--select last_name, 
--    job_id, 
--    department_id, 
--    hire_date
--from employees
--order by hire_date;

--select last_name, 
--    job_id, 
--    department_id, 
--    hire_date
--from employees
--order by hire_date desc;

--select employee_id,
--    last_name,
--    salary * 12 annsal
--from employees
--order by  annsal;

--select last_name, 
--    job_id, 
--    department_id, 
--    hire_date
--from employees
--order by 3;

--select last_name,
--    department_id,
--    salary
--from employees
--order by department_id,
--    salary desc;

--desc dual;
--
--select *
--from dual;
--
--select sysdate
--from dual;

--��ҹ���
--select 'The job id for ' || upper(last_name) || ' is ' || lower(job_id) as "EMPLOYEE DETAILS"
--from employees;

--select employee_id,
--    last_name,
--    department_id
--from employees
--where last_name = 'higgins';

--select employee_id,
--    last_name,
--    department_id
--from employees
--where lower(last_name) = 'higgins';


--select employee_id, 
--    concat(first_name, last_name) NAME,
--    job_id, 
--    length(last_name),
--    instr(last_name, 'a') "Contains 'a'?"
--from employees
--where substr(job_id, 4) = 'REP';


--���� �ݿø�, ������
--select round(45.923, 2),
--    round(45.923, 0),
--    round(45.923, -1),
--    round(45.923)    
--from dual;    

--select round(45.923, 2),
--    round(45.923, 0),
--    round(45.923, -1),
--    round(45.923)    
--from dual;    

--select last_name, 
--    salary,
--    mod(salary, 5000)
--from employees
--where job_id = 'SA_REP';


--��¥
--select sysdate
--from dual;

--select last_name,
--    (sysdate - hire_date) / 7 as WEEKS
--from employees
--where department_id = 90

--select employee_id,
--    hire_date,
--    months_between (sysdate, hire_date) TENURE,
--    add_months (hire_date, 6) REVIEW,
--    next_day(hire_date, 6),
--    last_day(hire_date)
--from employees
--where months_between(sysdate, hire_date) < 150;

--select employee_id,
--    hire_date,
--    round(hire_date, 'MONTH'),kpp
--    trunc(hire_date, 'MONTH')
--from employees;
--where hire_date LIKE '%97';

--select round(sysdate, 'year'),
--    round(sysdate, 'month'),
--    round(sysdate, 'day'),
--    round(sysdate, 'dd')
--from dual;


--��¥
--select to_date('2010��, 02��', 'yyyy"��", MM"��"')
--from dual;


--null �� ��ȯ
--select last_name, 
--    salary, 
--    nvl(commission_pct, 0),
----    commission_pct,
--    (salary * 12) + (salary * 12 * nvl(commission_pct, 0)) AN_SAL
--from employees;    

--select last_name,
--    nvl(to_char(commission_pct), '���ʽ� ����')
--from employees;        


--switch ����
--select last_name,
--    job_id,
--    salary,
--    case job_id
--        when 'IT_PROG' then 1.10 * salary
--        when 'ST_CLERK' then 1.15 * salary
--        when 'SA_REP' then 1.20 * salary
--    else salary end "REVISED_SALARY"
--from employees;    

--select last_name,
--    salary,
--    case when salary < 5000 then 'Low'
--        when salary < 10000 then 'Mendium'
--        when salary < 20000 then 'Good'
--    else 'Excellent' end qualified_salary
--from employees;    

--select last_name,
--    upper(concat(substr(last_name, 1, 8), '_US'))
--from employees    
--where department_id = 60;


-- �׷��Լ�
--select avg(salary),
--    max(salary),
--    min(salary),
--    sum(salary)
--from employees
--where job_id like '%REP%';

--select min(hire_date),
--    max(hire_date)
--from employees;    

--select min(last_name),
--    max(last_name)
--from employees;

--select count(*)
--from employees
--where department_id = 50;

--select count(commission_pct)
--from employees
--where department_id = 80;

--select last_name, 
--    department_id
--from employees;

--select count(distinct department_id)
--from employees;

--select avg(commission_pct)
--from employees;

--select avg(nvl(commission_pct, 0))
--from employees;


--�׷���
--select department_id,
--    avg(salary)
--from employees
--group by department_id
--order by department_id;

--select avg(salary)
--from employees
--group by department_id;

--select department_id,
--    avg(salary)
--from employees;

--select department_id,
--    job_id,
--    avg(salary)
--from employees
--group by department_id,
--    job_id;


--
--select department_id, 
--    avg(salary)
--from employees 
--group by department_id
--order by avg(salary);

--select department_id,
--    job_id,
--    sum(salary)
--from employees
--group by department_id,
--    job_id
--order by job_id;

--select department_id,
--    job_id,
--    sum(salary)
--from employees
--where department_id > 40
--group by department_id,
--    job_id
--order by job_id;


--having ��
--select department_id,
--    avg(salary)
--from employees
--group by department_id
--having avg(salary) > 8000;

--select department_id,
--    avg(salary)
--from employees
--group by department_id;

--select department_id,
--    max(salary)
--from employees
--group by department_id
--having max(salary) > 10000;


--select job_id,
--    sum(salary) payroll
--from employees
--where job_id not like '%REP%'
--group by job_id
--having sum(salary) > 13000
--order by sum(salary);


--�׷��Լ� ��ø
--select department_id,
--    max(avg(salary))
--from employees
--group by department_id;


--join
--select *
--from departments;
--select * 
--from employees;

--select last_name,
--    department_name
--from employees cross join departments;

--select department_id,
--    department_name,
--    location_id,
--    city
--from departments natural join locations;

--select employee_id,
--    last_name
--    location_id,
--    department_id
--from employees join departments using ( department_id );    

--select e.employee_id,
--    e.last_name,
--    e.department_id,
--    d.department_id,
--    d.location_id
--from employees e join departments d
--    on ( e.department_id = d.department_id );


--select l.location_id,
--    l.street_address,
--    l.city,
--    l.state_province,
--    c.country_name
--from locations l join countries c
--    on ( l.country_id = c.country_id );

--select e.last_name, 
--    e.department_id, 
--    d.department_name
--from employees e join departments d
--    on ( e.department_id = d.department_id );
    
--select e.employee_id,
--    l.city,
--    d.department_name
--from employees e join departments d
--    on d.department_id = e.department_id
--    join locations l
--        on d.location_id = l.location_id;

--select e.employee_id,
--    e.last_name,
--    e.department_id,
--    d.department_id,
--    d.location_id
--from employees e join departments d
--    on ( e.department_id = d.department_id) and e.manager_id = 149;
    
--select e.employee_id,
--    e.last_name,
--    e.department_id,
--    d.department_id,
--    d.location_id
--from employees e join departments d
--    on ( e.department_id = d.department_id )
--where e.manager_id = 149;    


--select worker.last_name emp,
--    manager.last_name mgr
--from employees worker join employees manager
--    on ( worker.manager_id = manager.employee_id );

--create table job_grades(
--    grade_level varchar2(3),
--    lowest_sal number(10),
--    hightest_sal number(10)
--);
--
--insert into job_grades values('A', 1000, 2999);
--insert into job_grades values('B', 3000, 5999);
--insert into job_grades values('C', 10000, 9999);
--insert into job_grades values('D', 15000, 14999);
--insert into job_grades values('E', 25000, 40999);

--drop table job_grades;
--select *
--from job_grades;

--select e.last_name,
--    e.salary,
--    j.grade_level
--from employees e join job_grades j
--    on e.salary between j.lowest_sal and j.hightest_sal;

--select e.last_name,
--    e.department_id,
--    d.department_name
--from employees e left outer join departments d
--    on ( e.department_id = d.department_id );
    
--select e.last_name,
--    e.department_id,
--    d.department_name
--from employees e right outer join departments d
--    on ( e.department_id = d.department_id );
    
--select e.last_name,
--    e.department_id,
--    d.department_name
--from employees e full outer join departments d
--    on ( e.department_id = d.department_id );

--select e.last_name as employee,
--    e.employee_id as emp#,
--    m.last_name as manager,
--    m.employee_id as mgr#
--from employees e join employees m
--    on ( m.employee_id = e.manager_id );
--
--select 
--
--select *
--from employees;
--
--select *
--from departments;


--���� ����
--select last_name,
--    salary
--from employees
--where salary > (
--    select salary
--    from employees
--    where last_name = 'Abel' );

--select last_name,
--    job_id,
--    salary
--from employees
--where salary = (
--    select min(salary)
--    from employees);

--���߼�������
--select last_name,
--    salary,
--    department_id
--from employees
--where salary in (
--    select min(salary)
--    from employees
--    group by department_id);

--select employee_id,
--    last_name,
--    job_id,
--    salary
--from employees
--where salary < any (
--    select salary
--    from employees
--    where job_id = 'IT_PROG' );
    
--select employee_id,
--    last_name,
--    job_id,
--    salary
--from employees
--where salary < all (
--    select salary
--    from employees
--    where job_id = 'IT_PROG' );


--insert 
--insert into departments(
--    department_id,
--    department_name,
--    manager_id,
--    location_id )
--values (
--    300,
--    'Public Relations',
--    100,
--    1700 );

--select *
--from departments;

--select department_id,
--    department_name,
--    manager_id,
--    location_id
--from departments;

--insert into departments (
--    department_id,
--    department_name )
--values ( 
--    330,
--    'Purchasing' );
    
--select department_id,
--    department_name,
--    manager_id,
--    location_id
--from departments;

--insert into departments
--values ( 
--    3100,
--    'Finance',
--    null,
--    null ) ;
    
--insert into departments (
--    department_id,
--    department_name,
--    manager_id,
--    location_id )
--values ( 
--    3100,
--    'Finance',
--    null,
--    null ) ;

--select *
--from employees;

--insert into employees
--values (
--    3114,
--    'Den',
--    'Raphealy',
--    'NAVER',
--    '515.127.4561',
--    to_date('2�� 3, 1999', 'MON DD, YYYY'),
--    'SA_REP',
--    11000,
--    0.2,
--    100,
--    60 );


-- insert ���� ����
--create table sales_reps (
--    id,
--    name,
--    salary,
--    commission_pct ) as
--    select employee_id,
--        last_name,
--        salary,
--        commission_pct
--    from employees
--    where employee_id = 0;

--insert into sales_reps (
--    id,
--    name,
--    salary,
--    commission_pct )
--    select employee_id,
--        last_name,
--        salary,
--        commission_pct
--    from employees
--    where job_id like '%REP%';

--select * 
--from sales_reps;


--update
--select *
--from employees
--where employee_id = 113;

--update employees
--set department_id = 50
--where employee_id = 113


--create table copy_emp as
--    select * 
--    from employees;

--select *
--from copy_emp;

--update copy_emp
--set department_id = 110;

--update employees
--set job_id = 'IT_PROG', commission_pct = null
--where employee_id = 114;

--select *
--from employees
--where employee_id = 114;

--����
--���� ���Ἲ ����
--delete from departments
--where department_name = 'Finance';

--select *
--from departments;

--delete from departments
--where department_id = 300;

-- DML ������ �ٽ� ���� ���� ( �������� ����, ��! COMMIT �ϸ� ���� �Ұ��� ) 
--delete from copy_emp;

--select *
--from copy_emp; 

--rollback;

--DDL ������ ���� �Ұ���
--truncate table copy_emp;

-- ����� 1 
--( DML ���� Ŀ���ϱ� ���� ���� ���ų� commit �ȵǹǷ� �ٸ� ����ڴ� ����, �ֽ�ȭ �ȵ� )
--commit;

--insert into departments
--values ( 777,
--    'Kyungil',
--    100,
--    1700);

--select *
--from departments;

--update employees
--set salary = 9999
--where employee_id = 176;

--select *
--from employees
--where employee_id = 176;

--rollback;

-- ����� 2
--select *
--from departments;

--update employees
--set salary = 7777
--where employee_id = 176;

--select *
--from employees
--where employee_id = 176;

--commit;


--DDL
--select table_name
--from user_tables;

--select distinct object_type
--from user_objects;

--select *
--from user_objects;





