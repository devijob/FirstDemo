/*create database*/
create database stud;

/*create table*/
CREATE TABLE stud (
    stud_no      INT             NOT NULL AUTO_INCREMENT,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    PRIMARY KEY (stud_no)
);

/*insert values*/
INSERT INTO stud ( stud_no, first_name, last_name,gender)
   VALUES
   ( '1','devi','priya','F');
   select * from stud;
   INSERT INTO stud ( stud_no, first_name, last_name,gender)
   VALUES
   ( '2','sri','vidhya','F'),('3','shanthi','vidhya','F'),('4','arun','kumar','M');
    select * from stud;
    SELECT * from stud WHERE first_name = 'sri';
     UPDATE stud 
        SET   first_name= 'sri' 
        WHERE stud_no = 1;
	select * from stud;
    
    /*delete row*/
    delete from stud where stud_no = 2;
    select * from stud;
    
    /*like clause*/
    select * from stud where last_name LIKE '%ya';
    
    /*sorting*/
    select * from stud order by gender asc;
    
    /*another table*/
    CREATE TABLE staff (
    staff_no      INT             NOT NULL AUTO_INCREMENT,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    PRIMARY KEY (staff_no)
);
INSERT INTO staff ( staff_no, first_name, last_name,gender)
   VALUES
   ( '1','archana','kanagaraj','F'),('2','eswari','mohan','F'),('3','arun','kumar','M'),('4','mohana','sri','M'),('5','sri','priya','M');
select * from staff;

/*join and order*/
select a.stud_no,a.first_name,b.gender from stud a,staff b where a.first_name=b.first_name order by stud_no asc;

/*duplication of primary key*/
insert into staff select*from stud where first_name='sri';
/*drop the coloumn*/
alter table staff drop staff_no;
select*from staff;
/*column no doesnt match*/
insert into staff select*from stud where first_name='sri';

alter table stud drop stud_no;

/*copy one table to other*/
insert into staff select*from stud where first_name='sri';
select*from staff;

/*all the data copied to staff table*/
insert into staff select*from stud;
select *from staff;

/*auto increment*/
create table fruits(id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   PRIMARY KEY (id),
 name VARCHAR(30) NOT NULL,
   date DATE NOT NULL);
insert into fruits(id,name,date) values(NULL,'mango','2019-05-05'),(NULL,'orange','2019-07-07'),(NULL,'apple','2019-09-09');
select*from fruits;

delete from fruits where id = 2;
select*from fruits;
alter table fruits auto_increment=2;
select*from fruits;
insert into fruits(id,name,date) values(NULL,'banana','2019-05-05');
select*from fruits;
delete from fruits where id = 5;
select *from fruits;
insert into fruits(id,name,date) values(NULL,'pin','2019-05-05');
select*from fruits;
delete from fruits where id = 6;
select*from fruits;
alter table fruits auto_increment=5;
insert into fruits(id,name,date) values(NULL,'by','2019-05-05');
select*from fruits;

/*join*/
CREATE TABLE officers (
    officer_id      INT             NOT NULL AUTO_INCREMENT,
    officer_name  VARCHAR(14)     NOT NULL,
    address   VARCHAR(16)     NOT NULL,
    PRIMARY KEY (officer_id)
);

INSERT INTO officers ( officer_id, officer_name, address)
   VALUES
   ( '1','devi','avadi'),( '2','sri','guindy'),( '3','priya','arani'),( '4','archana','guindy');
   select * from officers;
   
   
   CREATE TABLE studentss(
    student_id      INT             NOT NULL AUTO_INCREMENT,
    student_name  VARCHAR(14)     NOT NULL,
    course_name   VARCHAR(16)     NOT NULL,
    PRIMARY KEY (student_id)
);

INSERT INTO studentss ( student_id , student_name, course_name)
   VALUES
   ( '1','arun','c'),( '2','vidhya','java'),( '3','kumar','python');
   select * from studentss;
   
   /*inner join*/
SELECT officers.officer_name, address, studentss.course_name  
FROM officers   
INNER JOIN studentss  
ON officers.officer_id = studentss.student_id;
  
/*left outer join*/
SELECT  officers.officer_name, address, studentss.course_name  
FROM officers  
LEFT JOIN studentss  
ON officers.officer_id = studentss.student_id;  
   
/*right outer join*/
SELECT  officers.officer_name, address, studentss.course_name ,studentss.student_name 
FROM officers  
RIGHT JOIN studentss  
ON officers.officer_id = studentss.student_id;  