drop procedure if exists pro2;
delimiter $ 
create procedure pro2(in s varchar(20))


begin
 declare a int;
 set a := 1;
 lp1 :loop
 select substr(s,a,1);
if a>length(s)-1
then 
leave lp1;
end if ;
set a =a+1 ;
end loop lp1 ; 
end $ 
delimiter ;
