/*

drop procedure if exists p10;
delimiter $
create procedure p10 ( _t1name varchar(100), _tname varchar(2000))
begin
DECLARE exit handler for 1054 select "Invalid COLUMN";
set @x := concat("select *  from ", _t1name," join ", _tname);

prepare z from @x;

EXECUTE z;

end $
delimiter ;
----------------------------------------------------
drop PROCEDURE IF EXISTS pro10;
delimiter $
 
CREATE PROCEDURE pro10(name varchar(30))
BEGIN
DECLARE a char;
declare x int;
set x=0;
db1:loop
set x=x+1;
 set @a= substr(name,x,1);

select @a;
if x>LENGTH(name)-1
THEN
leave db1;
end if;
end loop db1;
end $
delimiter ;

-------------------------------------------------------------------



drop PROCEDURE IF EXISTS pro10;
delimiter $
 
CREATE PROCEDURE pro10(name varchar(30))
BEGIN
DECLARE a char;
declare x int;
set x=0;
set @a=" ";
db1:loop
set x=x+1;
if x=1 then 
 set @a= concat(@a,substr(name,x,1));
ELSE
set @a= concat(@a,',',substr(name,x,1));
end if;
if x>LENGTH(name)-1
THEN
leave db1;

end if;
end loop db1;
select @a;
end $
delimiter ;
---------------------------------------------------------------------


drop PROCEDURE IF EXISTS pro10;
delimiter $
 
CREATE PROCEDURE pro10(name varchar(30))
BEGIN
DECLARE a,w char;
declare x int;
set x=0;
set @a=" ";
set @w=" ";
db1:loop
set x=x+1;
IF (ASCII(SUBSTR(name,x,1)) BETWEEN 65 AND 90) or (ASCII(SUBSTR(name,x,1)) BETWEEN 97 AND 122) THEN
			set @a = CONCAT(@a,substr(name,x,1));
		else
			set @w = CONCAT(@w,SUBSTR(name,x,1));
		END IF;
if x>LENGTH(name)-1
THEN
leave db1;

end if;
end loop db1;
select @a;
select @w;
end $
delimiter ;
---------------------------------------------------------------------


drop PROCEDURE IF EXISTS pro10;
delimiter $
 
CREATE PROCEDURE pro10()
BEGIN

select concat(substr(ename,1,1),'(',substr(ename,2,length(ename)),') is ',job) from emp;

end $
delimiter ;
---------------------------------------------------------------------
*/


drop PROCEDURE IF EXISTS pro10;
delimiter $
 
CREATE PROCEDURE pro10(name varchar(30))
BEGIN
DECLARE a,w char;
declare x int;
set x=0;
set @a=" ";
set @w=" ";
db1:loop
set x=x+1;
         IF ASCII(SUBSTR(name,x,1)) BETWEEN 65 AND 90  
		 THEN
			set @a = CONCAT(@a,substr(name,x,1));
			
		else  
		
			set @w = CONCAT(@w,SUBSTR(name,x,1));	
		END IF;
if x>LENGTH(name)-1
THEN
leave db1;

end if;
end loop db1;
select @a;
select @w;
end $
delimiter ;
