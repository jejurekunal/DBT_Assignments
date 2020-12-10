show databases;
create database DBT_assignment5;
use DBT_assignment5;
create table EMP (EMPNO numeric(4) not null, ENAME varchar(30) not null, JOB varchar(10), MGR numeric(4), HIREDATE date, SAL numeric(7,2), DEPTNO numeric(2) );
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values 
(1000,  'Manish' , 'SALESMAN', 1003,  '2020-02-18', 600,  30),
(1001,  'Manoj' , 'SALESMAN', 1003,  '2018-02-18', 600,  30) ;
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO ) values
(1002 , 'Ashish', 'SALESMAN',1003 , '2013-02-18',  750,  30 ),
(1004,  'Rekha', 'ANALYST', 1006 , '2001-02-18', 3000,  10),
(1005 , 'Sachin', 'ANALYST', 1006 ,  '2019-02-18', 3000, 10 ),
(1006,  'Pooja',  'MANAGER'  ,     null    , '2000-02-18' ,6000, 10 );
select * from emp;

create table dept (dno numeric(4) not null, dname varchar(10) not null, area varchar(30));
Insert into dept(dno,dname,area) values
(10,'Store','Mumbai'),
(20, 'Purchase', 'Mumbai'),
(30, 'Store', 'Delhi'),
(40, 'Marketing', 'Pune'),
(50, 'Finance', 'Delhi'),
(60, 'Accounts', 'Mumbai');

select * from dept;

-- 1 -------------------
delimiter $$
create procedure Que1(in  var1 int,in var2 int )
begin
	select var1+var2;
	select var1-var2;
	select var1*var2;
	select var1/var2;
    end $$
call Que1(10,20);

-- 3 --------------------
delimiter $$
create procedure Que2(inout var1 varchar(10))
begin 
set var1=(select reverse(var1));
end $$
set @var1='DATABASE';
call que2(@var1);
select @var1 as rev;

-- 4 --------------------
delimiter $$
create procedure Que3()
begin
select EMPNO,ENAME,SAL from EMP order by SAL desc limit 5;
end $$
call Que3;

-- 4 -------------------
delimiter $$
create procedure Que4()
begin 
create table EMP_Test(EMP_ID int,ENAME varchar(10), JOINING_DATE date);
end $$
call Que4;

-- 5 ------------------
delimiter $$
create procedure Que5(in x int, in y varchar(10), in z varchar(10))
begin 
insert into dept values(x, y, z);
end $$
call Que5(60, 'EDUCATION', 'PUNE');
select * from dept;

-- 6 -------------------
delimiter $$
create procedure Que6(in NUM int,out SQR int,out CUBE int)
begin
declare num1 int ; 
set num1=NUM;
select num,power(num,2) as SQUARE,power(NUM,3) INTO NUM,SQR,CUBE;
end $$
set @NUM=2;
call Que6(@NUM,@SQR,@CUBE);
select @NUM,@SQR,@CUBE;

-- 7 ----------------------
delimiter $$
create procedure Que7(out ans int)
begin
declare num int;
set num=2;
select num into ans;
end $$

call Que7(@ans);
select @ans;

-- 8--------------------------------
 delimiter $$
CREATE PROCEDURE Que8(IN X INT,OUT STR VARCHAR(50))
BEGIN
SELECT concat(E.ENAME,' IS FROM ',D.DNAME) INTO STR  FROM EMP E INNER JOIN DEPT D ON D.DNO=E.DEPTNO WHERE E.DEPTNO=X AND E.EMPNO=1004;
END $$

CALL Que8(10,@STR);
SELECT @STR;