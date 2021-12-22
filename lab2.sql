--1. Вилучити будь-який зв' язок між таблицями вашої БД.
alter table doctor
drop constraint doctor_ibfk_1 ;
--2. Вилучити і змінити характеристики поля у одній з таблиць вашої БД.
alter table doctor
drop column category;
alter table doctor
modify name varchar(50);
--3. Змінити поле у одній з таблиць вашої БД.
alter table doctor
rename column dispancer to dispancer_info_111;
--4. Додати поле і нове обмеження унікальності до будь-якої таблиці вашої БД.
alter table doctor
add age int;




alter table doctor 
add constraint constr unique (fathername, age);
--5. Змінити тип обмеження цілісності для зв' язку у одній з таблиць вашої ВД
alter table registration
drop constraint code_doctor;

alter table registration 
add constraint code_doctor
foreign key (code_doctor) REFERENCES doctor (id);
