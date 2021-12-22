CREATE TABLE doctor (
  id int primary key,
  surname varchar(60),
  name varchar(60),
  fathername varchar(60),
  specialisatoin varchar(60),
  category varchar(60),
  dispancer int,
    CONSTRAINT doctor_ibfk_1 FOREIGN KEY (dispancer) REFERENCES narko_dispancer (id) ON DELETE CASCADE 
);





CREATE TABLE narko_dispancer (
  id int primary key,
  name varchar(60) ,
  address varchar(60) ,
  telephone varchar(60) ,
  email varchar(60)
);

CREATE TABLE pacient (
  id int primary key,
  surname varchar(60),
  name varchar(60),
  fathername varchar(60),
  age int,
  sex varchar(60),
  telephone varchar(60),
  employment varchar(60),
  address varchar(60)
);

CREATE TABLE registration (
  id int primary key,
  code_pacient int,
  date_in date ,
  date_out date ,
  code_doctor int ,
  diagnos varchar(60) ,
  number_dispanser int ,




  number_palat int,
   CONSTRAINT registration_ibfk_1 FOREIGN KEY (code_doctor) REFERENCES doctor (id) ON DELETE CASCADE,
   CONSTRAINT registration_ibfk_2 FOREIGN KEY (code_pacient) REFERENCES pacient (id) ON DELETE CASCADE,
   CONSTRAINT registration_ibfk_3 FOREIGN KEY (number_dispanser) REFERENCES narko_dispancer (id) ON DELETE CASCADE 
) ;
