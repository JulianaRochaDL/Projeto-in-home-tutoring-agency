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
    
    
    
    

