show databases;
use stud; 
DELIMITER $$
CREATE PROCEDURE works ()
BEGIN
create table workers(id int,name varchar(10),salary varchar(10),primary key(id)); 
insert into workers values(' 1', 'devi','15000');
select* from workers;  
END $$
delimiter ;
call works;

DELIMITER $$
CREATE PROCEDURE products ()
BEGIN
update workers set salary='20000' where id=1;
END $$
delimiter ;
call products;

select * from workers;

DELIMITER $$
CREATE PROCEDURE del ()
BEGIN
delete from workers where id = "1";
select * from workers;
END $$
delimiter ;
call del;
drop procedure del;
