drop procedure if exists pro2;
delimiter $ 
create procedure pro2(in s varchar(20))


begin
 declare a int;
 
 declare c CHAR;   
 set a := 1;
 lp1 :loop
 C = substr(s,a,1);  
 IF C IN ( 'a', 'e', 'i', 'o', 'u' )
 THEN 
 dbms_output.put_line(C);


end if ;

end loop lp1 ; 
end $ 
delimiter ;
