create table if not exists member(
	id varchar(20) not null,
	passwd varchar(20),
	name varchar(30),
	primary key(id)
);

insert into member values('3','1234','±×¸°'),('4','1235','ÄÄ');

select * from member;