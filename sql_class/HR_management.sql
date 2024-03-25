/*고용자 테이블*/
--select * from employees;

/*부서 테이블*/
--select * from departments;

/*부서 테이블에서 부서 id, 위치 id 가져오기*/
--select  department_id, 
--        location_id
--from    departments;

/*부서 테이블에서 위치 id, 부서 id 가져오기*/
--select  location_id, 
--        department_id 
--from    departments;

/*부서 테이블에서 부서 id, 부서 id 가져오기*/
--select  department_id, 
--        department_id 
--from    departments;

/*고용 테이블에서 뒷이름, 봉급, 봉급+300 가져오기*/
--select  last_name,
--        salary,
--        salary + 300
--from    employees;

/*고용 테이블에서 뒷이름, 봉급, 12*봉급+100 가져오기*/
--select  last_name,
--        salary,
--        12 * salary + 100
--from    employees;

/*고용 테이블에서 뒷이름, 봉급, 12*(봉급+100) 가져오기*/
--select  last_name,
--        salary,
--        12 *(salary + 100)
--from    employees;

/*고용 테이블에서 뒷이름, 직업id, 봉급, 인센티브퍼센트 가져오기*/
--select  last_name,
--        job_id,
--        salary,
--        commission_pct
--from    employees;

/*고용 테이블에서 뒷이름, 12 * 봉급 * 인센티브퍼센트 가져오기*/
--select  last_name,
--        12 * salary * commission_pct
--from    employees;



