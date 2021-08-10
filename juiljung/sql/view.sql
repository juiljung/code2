create view uv_membertbl
as
select membername,memberaddress from membertbl;

select membername  from uv_membertbl;
