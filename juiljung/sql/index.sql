create table  indextbl (memberid char(8),membername char(5),memberaddress char(20));
insert into indextbl
		select memberid,membername,memberaddress
		from test.membertbl;
select * from test.indextbl;

select * from indextbl where memberid = 'thomas';