drop procedure if exists pro2;
delimiter $ 
create procedure pro2(in s varchar(20))


begin
DECLARE c CHAR;
DECLARE a int;


lb1 : loop
 c = substr(s,a,1);
    IF c in ( 'a', 'e', 'i', 'o', 'u' )
	THEN
     SELECT c r2;
     
	 ELSE 
     SELECT "no vowels in string" r1;
    
	end if;
   a++;
end loop lb1;
end $
delimiter ;