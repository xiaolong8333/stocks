drop procedure if exists user_token;
delimiter $$
create procedure user_token( _remember_token varchar(1000)) 
begin
select id,name from users where  remember_token=_remember_token;
end
$$
delimiter ;

-- 用户外汇列表 

drop procedure if exists get_user_for_count;
delimiter $$
create procedure get_user_for_count(_id int(11)) 
begin
select count(*) as total_count from user_foreign_exchange_lists where user_id=_id;
end
$$
delimiter ;

drop procedure if exists user_for_list;
delimiter $$
create procedure user_for_list(_user_id int(11),_begin int(11),_limit int(2)) 
begin
     declare __count int default 0;
     select count(*) into __count from user_foreign_exchange_lists where user_id=_user_id;
	 if _begin>= __count then
	 set _begin = 0;
	 end if;
select b.* from user_foreign_exchange_lists a
left join foreign_exchange_lists b 
on a.FS = b.FS
where a.user_id =_user_id
	 limit _begin,_limit;
end
$$
delimiter ;
-- 用户持仓
drop procedure if exists get_user_order_count;
delimiter $$
create procedure get_user_order_count(_id int(11)) 
begin
select count(*) as total_count from orders where user_id=_id && status!=2;
end
$$
delimiter ;

drop procedure if exists user_order_list;
delimiter $$
create procedure user_order_list(_user_id int(11),_begin int(11),_limit int(2)) 
begin
     declare __count int default 0;
     select count(*) into __count from order where user_id=_user_id;
	 if _begin>= __count then
	 set _begin = 0;
	 end if;
select a.* from orders a
left join foreign_exchange_lists b 
on a.FS = b.FS
where a.user_id =_user_id
	 limit _begin,_limit && status!=2;
end
$$
delimiter ;




