create table course_tbl(
	id varchar2(5) not null primary key,
	name varchar2(40),
	credit number(6),
	lecturer varchar2(10),
	week number(2),
	start_hour number(4),
	end_end number(4)
);
select * from course_tbl order by id;
insert into course_tbl(id, name, credit, lecturer, week, start_hour, end_end) values(10001, '프로그래밍', 2, '1', 1, 0900, 1100);
insert into course_tbl(id, name, credit, lecturer, week, start_hour, end_end) values(10002, '객체지향 프로그래밍', 2, '2', 2, 0900, 1200);
insert into course_tbl(id, name, credit, lecturer, week, start_hour, end_end) values(10003, '자료구조', 3, '4', 3, 0900, 1200);
insert into course_tbl(id, name, credit, lecturer, week, start_hour, end_end) values(10004, '알고리즘', 3, '4', 4, 0900, 1200);
insert into course_tbl(id, name, credit, lecturer, week, start_hour, end_end) values(20001, '시스템 프로그래밍', 2, '5', 1, 1300, 1600);
insert into course_tbl(id, name, credit, lecturer, week, start_hour, end_end) values(20002, '운영체제', 3, '5', 2, 1500, 1800);
insert into course_tbl(id, name, credit, lecturer, week, start_hour, end_end) values(20003, '오토마타와 컴파일러', 3, '5', 3, 1330, 1630);
insert into course_tbl(id, name, credit, lecturer, week, start_hour, end_end) values(30001, '소프트웨어 공학', 2, '3', 4, 1330, 1530);
insert into course_tbl(id, name, credit, lecturer, week, start_hour, end_end) values(30002, '시스템 분석 및 설계', 3, '3', 5, 0900, 1200);
insert into course_tbl(id, name, credit, lecturer, week, start_hour, end_end) values(40001, '데이터베이스', 3, '2', 5, 1300, 1600);

create table lecturer_tbl(
	idx number(6) not null primary key,
	name varchar2(10),
	major varchar2(30),
	field varchar2(30)
);

insert into lecturer_tbl(idx, name, major, field) values(1, '김교수', '소프트웨어공학', '알고리즘');
insert into lecturer_tbl(idx, name, major, field) values(2, '이교수', '소프트웨어공학', '인공지능');
insert into lecturer_tbl(idx, name, major, field) values(3, '박교수', '소프트웨어공학', '소프트웨어공학');
insert into lecturer_tbl(idx, name, major, field) values(4, '우교수', '소프트웨어공학', '알고리즘');
insert into lecturer_tbl(idx, name, major, field) values(5, '최교수', '응용컴퓨터공학', '임베디드시스템');
insert into lecturer_tbl(idx, name, major, field) values(6, '강교수', '응용컴퓨터공학', '멀티미디어');
insert into lecturer_tbl(idx, name, major, field) values(7, '황교수', '모바일시스템공학', '네트워크');

select c.id, c.name, c.credit, l.name, c.week, c.start_hour, c.end_end from course_tbl c, lecturer_tbl l where c.lecturer = l.idx order by c.id;

update course_tbl set name = ?, credit = ?, lecturer = ?, week = ?, start_hour = ?, end_end = ? where id = ?; 