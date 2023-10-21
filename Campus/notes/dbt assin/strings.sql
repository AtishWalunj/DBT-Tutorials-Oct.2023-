/*drop procedure if EXISTS p9;
delimiter $
create procedure p9 (_tname varchar(10))
begin
set @x := concat("select * from " ,_tname);

prepare z from @x;



EXECUTE z;

end $
delimiter ;
*/

/*drop procedure if exists p10;
delimiter $
create procedure p10 ( _t1name varchar(100), _tname varchar(2000))
begin
DECLARE exit handler for 1054 select "Invalid COLUMN";
set @x := concat("select *  from ", _t1name," join ", _tname);

prepare z from @x;

EXECUTE z;

end $
delimiter ;
*/

/*
drop procedure if exists p11;
delimiter $
create procedure p11 ( _cname varchar(100), _tname varchar(2000))
begin

DECLARE exit handler for 1054 select " invalid column";
set @x := concat(" select *  from ", _cname , _tname );

prepare z from @x ;
execute z ;

end $
delimeter ;
*/
/*

drop TRIGGER if exists t1;
delimiter $
create trigger t1 BEFORE INSERT on d for each ROW

begin
INSERT into d1 values(New.deptno, new.dname, new.loc, CURRENT_DATE(),CURRENT_TIME(),USER());

end $
delimiter ;
*/

drop trigger if exists t2;
delimiter $
create trigger t2 BEFORE INSERT on d for each ROW

begin
INSERT into d1 VALUES(old.deptno, old.dname, old.loc, CURRENT_DATE(), CURRENT_TIME(),USER());
end $
delimiter ;