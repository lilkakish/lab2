--1. �������� ����-���� ��' ���� �� ��������� ���� ��.
alter table doctor
drop constraint doctor_ibfk_1 ;
--2. �������� � ������ �������������� ���� � ���� � ������� ���� ��.
alter table doctor
drop column category;
alter table doctor
modify name varchar(50);
--3. ������ ���� � ���� � ������� ���� ��.
alter table doctor
rename column dispancer to dispancer_info_111;
--4. ������ ���� � ���� ��������� ���������� �� ����-��� ������� ���� ��.
alter table doctor
add age int;




alter table doctor 
add constraint constr unique (fathername, age);
--5. ������ ��� ��������� �������� ��� ��' ���� � ���� � ������� ���� ��
alter table registration
drop constraint code_doctor;

alter table registration 
add constraint code_doctor
foreign key (code_doctor) REFERENCES doctor (id);
