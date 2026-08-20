create database tutoring_agency;

use tutoring_agency;

create table students(
	idStudent int auto_increment primary key,
    idGuardian int not null,
    idNeighborhood int not null,
    street varchar(20) not null,
	num varchar(6) not null,
    Fname varchar(20) not null,
    Minit varchar(20),
    Lname varchar(20) not null,
    CPF char(11) not null unique,
    contact char(11),
    gradeLevel enum('4° ano EF', '5° ano EF', '6° ano EF', '7° ano EF', '8° ano EF', '9° ano EF', '1° ano EM', '2° ano EM', '3° ano EM') not null,
    constraint fk_students_guardian foreign key (idGuardian) references guardians(idGuardian),
    constraint fk_students_neighborhood foreign key (idNeighborhood) references neighborhoods(idNeighborhood)
);

create table guardians(
	idGuardian int auto_increment primary key,
	Fname varchar(20) not null,
    Minit varchar(20),
    Lname varchar(20) not null,
    CPF char(11) not null unique,
    contact char(11) not null
);

create table subjects(
	idSubject int auto_increment primary key,
    Dname varchar(20) not null
);

create table teachers(
	idTeacher int auto_increment primary key,
    idNeighborhood int not null,
    street varchar(20) not null,
	num varchar(6) not null,
	Fname varchar(20) not null,
    Minit varchar(20),
    Lname varchar(20) not null,
    CNPJ char(14) not null unique,
    CPF char(11) unique,
    contact char(11) not null,
	constraint fk_teachers_neighborhood foreign key (idNeighborhood) references neighborhoods(idNeighborhood)
);

create table teacherSubject(
	idTeacher int,
    idSubject int,
    gradeLevel enum('4° ano EF', '5° ano EF', '6° ano EF', '7° ano EF', '8° ano EF', '9° ano EF', '1° ano EM', '2° ano EM', '3° ano EM') not null,
    primary key (idTeacher, idSubject),
    constraint fk_TS_teacher foreign key (idTeacher) references teachers(idTeacher),
    constraint fk_TS_subject foreign key (idSubject) references subjects(idSubject)
);

create table classes(
	idClasse int auto_increment primary key,
    idTeacher int not null,
    idStudent int not null,
    idSubject int not null,
    idRecurringClasse int,
    classDate date not null,
    classTime time not null,
    typeClasse enum('Fixa', 'Esporádica'),
    classStatus enum('Agendada', 'Reagendada', 'Realizada', 'Cancelada'),
    constraint fk_classes_teacher foreign key (idTeacher) references teachers(idTeacher),
    constraint fk_classes_student foreign key (idStudent) references students(idStudent),
	constraint fk_classes_subject foreign key (idSubject) references subjects(idSubject),
    constraint fk_classes_recurringClasse foreign key (idRecurringClasse) references recurringClasses(idRecurringClasse)
);

create table recurringClasses(
	idRecurringClasse int auto_increment primary key,
    dayWeek enum('segunda-feira', 'terça-feira', 'quarta-feira', 'quinta-feira', 'sexta-feira', 'sábado', 'domingo') not null,
    timeClasse time not null,
    startDate date not null,
    endDate date
);
    
create table neighborhoods(
	idNeighborhood int auto_increment primary key,
    Bnome varchar(20) not null,
    city varchar(20) not null,
    state char(2) not null,
    cityZone enum('Norte', 'Sul', 'Leste', 'Oeste') not null
);

    

    
    
    
    
    

    
	
	

    
	




    
    
    
    

