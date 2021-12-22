--створення таблиць з даними
create table DISTRICT_TYPE_1
    as select id, name from pacient
        where id <= 3;
        
create table DISTRICT_TYPE_2
    as select id, name from narko_dispancer
        where id > 2;
        
select * from DISTRICT_TYPE_1;
select * from DISTRICT_TYPE_2;

--1. Створити запит на виконання об’єднання (для будь-яких таблиць вашої БД).
select * from DISTRICT_TYPE_1
    union select * from DISTRICT_TYPE_2;



    
select * from DISTRICT_TYPE_1
    union all select * from DISTRICT_TYPE_2;

--2. Створити запит на виконання перетину (для будь-яких таблиць вашої БД).

select * from DISTRICT_TYPE_1
    intersect select * from DISTRICT_TYPE_2;

--3. Виконати запит на побудову різниці (для будь-яких таблиць вашої БД).

select * from DISTRICT_TYPE_1
    minus select * from DISTRICT_TYPE_2; 

--4. Побудувати запит на виконання декартового добутку двох таблиць (для будь-яких таблиць вашої БД).
select * from DISTRICT_TYPE_1, DISTRICT_TYPE_2;
