DELIMITER $$
CREATE PROCEDURE works ()
BEGIN
create table workers(id int,name varchar(10),salary varchar(10),primary key(id)); 
insert into workers values(' 1', 'devi','15000');
select* from workers;  
END $$
delimiter ;
call works;