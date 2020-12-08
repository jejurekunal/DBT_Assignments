show databases;
use myorg;
show tables;
select * from department;
select * from employee;
select sum(salary) from employee group by dept_id;
SELECT 
    dept_id, SUM(salary)
FROM
    employee
GROUP BY dept_id
HAVING SUM(salary) > 17000;
SELECT 
    dept_id, SUM(salary)
FROM
    employee
GROUP BY dept_id
HAVING SUM(salary) > 18000;
SELECT 
    dept_id, SUM(salary)
FROM
    employee
GROUP BY dept_id
HAVING SUM(salary) < 20000;
