select * from usertbl;
select * from buytbl; 

use cookdb;
select * from usertbl;
select * from usertbl where username = '강호동';


select userid,username from usertbl where birthyear >= 1970 and height >= 182;
select userid,username from usertbl where birthyear >= 1970 or height >= 182;

select username,height from usertbl where height >= 180 and height <= 182;
select username,height from usertbl where height between 180 and 182;

select username,addr from usertbl where addr ='경남' or addr='충남' or addr='경북';
select username,addr from usertbl where addr in('경남','충남','경북');

select username,height from usertbl where username like '김%';
select username,height from usertbl where username like'_경규';

select username,height from usertbl where height > 177;
select username,height from usertbl where height > (select height from usertbl where username ='김용만');
select username,height from usertbl where height >= (select height from usertbl where addr='경기');
select username,height from usertbl where height >= any (select height from usertbl where addr='경기');
select username,height from usertbl where height >= all (select height from usertbl where addr='경기');
select username,height from usertbl where height in ( select height from usertbl where addr ='경기');

select username,mdate from usertbl order by mdate;
select username,mdate from usertbl order by mdate desc;
select username,height from usertbl order by height desc,username asc;

select addr from usertbl;
select addr from usertbl order by addr;
select distinct addr from usertbl;

use employees;
select emp_no,hire_date from employees order by hire_date asc;
select emp_no,hire_date from employees 
	order by hire_date asc 
	limit 5;
    
select emp_no,hire_date from employees 
	order by hire_date asc 
    limit 0,5;    

use cookdb;
create table buytbl2 (select * from buytbl);
select * from buytbl2;

create table buytbl3 (select userid,prodname from buytbl);
select * from buytbl3;

use cookdb;
select userid,amount from buytbl order by userid;
select userid,sum(amount) from buytbl group by userid;



    
    
    
    
    
    
    
    
    
    
    
    

