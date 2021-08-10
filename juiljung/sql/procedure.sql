delimiter //
create procedure emp_change_a (번호 int)
begin
	update test.salary1	set 지급방식 = 's' where 사원번호 = 번호;
	SELECT * FROM test.salary1;
end //
delimiter ;


call emp_change_a(32);