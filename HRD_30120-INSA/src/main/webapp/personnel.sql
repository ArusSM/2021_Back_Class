create table personnel (
	id char(2) not null primary key,
	name varchar2(30) not null,
	dept varchar2(20) not null,
	position char(1),
	duty varchar2(20),
	phone varchar2(14)
);

drop table personnel;

insert into PERSONNEL(id, name, dept, position, duty, phone) values('95', '박민우', '인사부', '1', '상무', '010-1234-5678');
insert into PERSONNEL(id, name, dept, position, duty, phone) values('96', '홍길동', '경리부', '2', '과장', '010-3333-4444');