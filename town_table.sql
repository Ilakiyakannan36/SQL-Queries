use ilakiya;
create table Towns(id int, name varchar(255), code int, population int);
desc Towns;
insert into Towns(id, name, code, population) values (1, 'Mumbai', 1000, 1000);
insert into Towns(id, name, code, population) values (2, 'Chennai', 1606, 10000);
insert into Towns(id, name, code, population) values (3, 'Guwahati', 900, 900);
insert into Towns(id, name, code, population) values (4, 'Trichy', 9087, 10900);
insert into Towns(id, name, code, population) values
(5, 'Lucknow', 234, 8989),
(6, 'Kolkata', 456,9989),
(7, 'Kerala', 1878, 9999),
(8, 'Banglore', 1989, 9099),
(9, 'Hyderabad', 890, 8888),
(10, 'Vizag', 987, 8898);
select *from Towns;

#find the multiple of 3 rows
select name, population from Towns where id%3 = 0;

