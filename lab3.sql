--1. Заповнити таблиці вашої БД в режимі одиночного і групового допо
insert into pacient(id,name) values (1, 'namel');
insert all
into pacient values (2,'','name2','','','','','','')
into pacient values (3, '','name3','','','','','','')
into pacient values (4, '','name4','','','','','','')
into pacient values (5,'', 'name5','','','','','','')
select * from pacient;
--2. Створити файли з даними (будь-якого сумісного типу) і заповнити
create or replace directory data_load as 'C:\\load\\';
create table DISTRICT_TYPE_LOAD(
id int,
name varchar(50),




address1 varchar(60) ,
telephone1 varchar(60) ,
email1 varchar(60))

organization external(
type ORACLE_LOADER
default directory data_load

access parameters(
records delimited by newline
fields terminated by ','
missing field values are null)
location ('loading.txt')
) ;
insert into narko_dispancer select * from DISTRICT_TYPE_LOAD;
--drop table DISTRICT_TYPE_LOAD;
--3. Виконати модифікацію значень у будь-яких таблицях БД для одного
update pacient set name = 'update many' where id > 3;
update pacient set name = 'update one' where name = 'name3';
--4. Видалити записи (один запис, групу записів, усі записи) 
--delete from pacient where id = 3;
--delete from pacient where id > 3;
--truncate table pacient;
