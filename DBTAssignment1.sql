create database DBTAssignment;
use dbtassignment;
create table Member(Member_Id int not null, Member_name varchar(50), Member_Address varchar(50), Acc_Open_Date date, Membership_Type varchar(50), Ammpont_Paid int not null);
create table Books(Book_no int not null, Book_name varchar(50), Author_name varchar(50), Cost int not null, Category char(10));
create table Issue(Lib_Issue_Id int not null,Book_no int not null, Member_Id int not null, Issue_Date Date, Return_Date date);
show tables;
select * from member;
select * from books;
select * from issue;
drop table issue;
alter table member drop column Ammpont_Paid;
select * from member;
insert into member (Member_Id, Member_name, Member_Address, Acc_Open_Date, Membership_Type) value
('1', 'Richa sharma', 'Pune', '2010-12-05', 'Lifetime'),
('2', 'Garima Sen', 'Pune', curdate(), 'Annual');
select * from member;
insert into books(Book_no, Book_name, Author_name, Cost, Category) value
('101', 'Let us C', 'Denis Ritchie', '450', 'System'),
('102', 'Oracle – Complete Ref', 'Loni', '550', 'Database'),
('103', 'Mastering SQL', 'Loni', '250', 'Database'),
('104', 'PL SQL-Ref', 'ScottUrman', '750', 'Database');
select * from books;
insert into issue values ('7001', '101', '1', 20061206, null );
insert into issue values ('7002', '102', '2', 20061225, null );
insert into issue values ('7003', '104', '1', 20060115, null );
insert into issue values ('7004', '101', '1', 20060704, null );
insert into issue values ('7005', '104', '2', 20061115, null );
insert into issue values ('7006', '101', '3', 20060218, null );
select * from issue;
select * from books;
update books set cost=300, category='RDBMS' where Book_no=103;
select * from books;
