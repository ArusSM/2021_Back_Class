create table employee_tbl(
	empno number(5) primary key not null,
	empname varchar2(20),
	joindate date,
	rank char(1),
	dept char(1)
);
drop table employee_tbl;
select * from employee_tbl;
insert into employee_tbl(empno, empname, joindate, rank, dept) values(10001, '고영만', '20170301', 'A', 'A'); 
insert into employee_tbl(empno, empname, joindate, rank, dept) values(10002, '만준원', '20170301', 'A', 'B');
insert into employee_tbl(empno, empname, joindate, rank, dept) values(10003, '원성휘', '20170301', 'B', 'A');
insert into employee_tbl(empno, empname, joindate, rank, dept) values(10004, '휘현진', '20150501', 'B', 'B');
insert into employee_tbl(empno, empname, joindate, rank, dept) values(10005, '진유민', '20150501', 'C', 'C');

create table salary_tbl(
	empno number(5) not null,
	payday date not null,
	pay number(10),
	CONSTRAINT pk2 primary key(empno, payday)
);

drop table salary_tbl;

insert into salary_tbl(empno, payday, pay) values(10001, '20190301', 1540000);
insert into salary_tbl(empno, payday, pay) values(10001, '20190401', 1570000);
insert into salary_tbl(empno, payday, pay) values(10002, '20190301', 1740000);
insert into salary_tbl(empno, payday, pay) values(10002, '20190401', 1770000);
insert into salary_tbl(empno, payday, pay) values(10003, '20190301', 2400000);
insert into salary_tbl(empno, payday, pay) values(10003, '20190401', 2450000);
insert into salary_tbl(empno, payday, pay) values(10004, '20190301', 3400000);
insert into salary_tbl(empno, payday, pay) values(10004, '20190401', 3450000);
insert into salary_tbl(empno, payday, pay) values(10005, '20190301', 4500000);
insert into salary_tbl(empno, payday, pay) values(10005, '20190401', 4550000);
select * from salary_tbl;


select e.empname, s.empno, sum(s.pay) from salary_tbl s, EMPLOYEE_TBL e where s.empno = e.empno group by s.empno, e.empname order by sum(s.pay) DESC, s.empno;