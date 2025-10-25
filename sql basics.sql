#using database
use ilakiya;

#creating table
create table student (Name varchar(20), roll_no int, age int, marks int, city varchar(20));

#inserting values
insert into student(Name , roll_no, age, marks, city) values('Raj', 201, 23, 90, 'Chennai');
insert into student(Name , roll_no, age, marks, city) values('Yash', 202, 22, 89, 'Trichy');
insert into student(Name , roll_no, age, marks, city) values('Kishore', 203, 21, 78, 'Perambalur');
insert into student(Name , roll_no, age, marks, city) values('Dimple', 204, 23, 95, 'Tanjore');
insert into student(Name , roll_no, age, marks, city) values('Radhika', 205, 21, 65, 'Pondicherry');
insert into student(Name , roll_no, age, marks, city) values('Deepika', 206, 22, 97, 'Madurai');

#display table
select *from student;

#alter command
alter table student ADD duration int;

#update command
update student
set duration = 4
where roll_no = 201;

#update command if not primary column
SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET duration = 3
WHERE roll_no = 203;

UPDATE student
SET duration = 4
WHERE roll_no = 205;
select *from student where city = 'Chennai' or marks = 90;

#identify element which has same first leter
select *from student;
select *from student where name like 'R%';

#Distinct command
select distinct city from student;

#average command
select avg(marks) as AverageMarks from student;

#Count
select count(*) from student;






