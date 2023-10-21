/*drop PROCEDURE if EXISTS login;
delimiter $
CREATE PROCEDURE login(name varchar(30) ,password varchar(30),emailid varchar(30))
BEGIN
CREATE table t1(name varchar(30) ,password varchar(30),emailid varchar(30));
insert into t1 VALUES(name,password,emailid);
end $
delimiter ;

drop PROCEDURE if EXISTS pro2;
delimiter $
CREATE PROCEDURE pro2(id int ,CURR_DATE DATE ,CURRE_time TIME,message varchar(30))
BEGIN
CREATE table t3(id int PRIMARY key auto_increment,CURR_DATE DATE ,CURRE_time TIME,message varchar(30));

end $
delimiter ;



drop procedure if EXISTS checkuser;

delimiter $
CREATE procedure checkuser(_emailid varchar(30), message varchar(20))
BEGIN
declare x BOOLEAN;
SELECT true into x from t1 WHERE emailid=_emailid;
if (x=true)
THEN

SELECT name,password from t1 WHERE emailid=_emailid;

ELSE
 insert into t3(CURR_DATE,CURRE_time,message) VALUES(CURRENT_DATE() , current_time(), message);
end if ;
end $
delimiter ;


drop procedure if EXISTS getQualification;
delimiter $
create procedure getQualification(studentid int )


BEGIN
declare x BOOL;
SELECT true into x from student WHERE  id=studentid;
if(x=true)
THEN
SELECT * from student s join student_qualifications sq on s.id=sq.studentid where s.id=studentid;
end if;
end $
delimiter ;
*/

/*
drop procedure if EXISTS addStudent;
delimiter $
create procedure addStudent(id int ,namefirst varchar(20) ,
 namelast varchar(30),dob varchar(30),emailid varchar(30),num varchar(30),address varchar(30))

BEGIN
declare x BOOL;
insert into student(id,namefirst,namelast,dob,emailid) VALUES(id,namefirst,namelast,dob,emailid);
insert into student_phone(id,studentid,number) VALUES(60,id,num);
insert into student_address(id,studentid,address) VALUES(67,id,address);
end $
delimiter ;
*/
/*
drop procedure if EXISTS addQualification;
delimiter $
create procedure addQualification(sid int , studentid int, name varchar(200), college varchar(200), university varchar (200), marks varchar (200), years int)
BEGIN
declare x bool ;
SELECT true into x from student where id = studentid;
if(x=true)
then 
insert into student_qualifications VALUES(sid,studentid,name, college, university, marks, years);
ELSE
SELECT 'student not found';
end if;

end $
delimiter ;
*/

/*

drop procedure if EXISTS pro3;
delimiter $
create procedure pro3(name varchar(200))
BEGIN
declare A INTEGER ;

set a=0 ;
lb : LOOP 
set a = a+1 ;
SELECT substring(name,a,1);
IF
 a>LENGTH(name)-1  
 THEN
 leave lb ;
 end if ;
 end LOOP lb ;
 end $
 delimiter ;
 
 */

/*
drop procedure if exists pro4;
delimiter $
create procedure pro4(name varchar(200))
BEGIN
declare A INTEGER;

set a =0;
set a = a+1;
lb : LOOP

set @z = substring(name,a,1);

if
   @z%1 != 0 
then
set @x = @z ;

if
 a>LENGTH(name)-1
 then
leave lb ;

end if ;
end if ;
end loop lb ;
end $ 
delimiter ;
*/

/*
drop procedure if exists pro6;
delimiter $
create procedure pro6(name varchar(200))
BEGIN
declare a INTEGER ;
set a =0;

lb : loop
set a = a+1;
set @z = SUBSTR(name, a, 1);

if (ascii(@z) BETWEEN 65 and  90) 

then
 select @z as "capital" ;
 

ELSE 
     set @p=@z;
	select @p;
	end if;
	  if 
 a>LENGTH(name)-1 then 
 leave lb;
end if;

end loop lb ;
end $ 
delimiter ;
 */










 
 /*
 drop procedure if exists addStudent;
 delimiter $
 create procedure addStudent(id1 int,namefirst1 varchar(40),namelast1 varchar(40),dob varchar(20),emailid varchar(40),number1 varchar (45));
 BEGIN
 declare x bool;
 if true into x where id1=id THEN
 insert into student(id,namefirst,namelast,dob,emailid) values(
 insert into student_phone(studentid,number,isactive);
 insert into student_address(studentid,address);
 
 
 
 end $
 delimiter ;
 
 */
 
 
 
 
 
 /*
 
 drop procedure if EXISTS addStudent;
delimiter $
create procedure addStudent(id int ,namefirst varchar(20) ,
 namelast varchar(30),dob varchar(30),emailid varchar(30),num varchar(30),address varchar(30),ip int, ia int)

BEGIN

insert into student(id,namefirst,namelast,dob,emailid) VALUES(id,namefirst,namelast,dob,emailid);
insert into student_phone(id,studentid,number) VALUES(ip,id,num);
insert into student_address(id,studentid,address) VALUES(ia,id,address);
end $
delimiter ;
*/














/*

drop procedure if exists addQualification;
delimiter $
create procedure addQualification(sid int,studentid int,name varchar(20),college varchar(20),university varchar(100),marks varchar(20),year int)
BEGIN
declare x bool;
select true into x from student where id=studentid;
if (x=true) then 
insert into student_Qalifications values(sid,studentid,name,college,university,marks,year);
ELSE
   select "student not found";
end if;
end $
delimiter ;   
*/