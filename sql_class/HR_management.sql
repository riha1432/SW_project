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



