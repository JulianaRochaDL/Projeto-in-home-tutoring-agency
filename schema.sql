create database tutoring_agency;

create table students(
	idStudent int auto_increment primary key,
    Fname varchar(20),
    Minit varchar(20),
    Lname varchar(20),
    CPF char(11),
    streetNumber varchar(20),
    neighborhoodCityState varchar(20),
    contact char(11),
    gradeLevel enum('4° ano EF', '5° ano EF', '6° ano EF', '7° ano EF', '8° ano EF', '9° ano EF', '1° ano EM', '2° ano EM', '3° ano EM')
);

create table guardians(
	idGuardian int auto_increment primary key,
    idStudent int,
	Fname varchar(20),
    Minit varchar(20),
    Lname varchar(20),
    CPF char(11),
    contact char(11),
    constraint fk_guardians_student foreign key (idStudent) references students(idStudent)
);

create table subjects(
	idSubject int auto_increment primary key,
    Dname varchar(20)
);




    
    
    
    

