-- Criando tabelas do meu banco de dados

create database tutoring_agency;

use tutoring_agency;

-- Criando a tabela de bairros 
-- A tabela neighborhoods se torna necessária pois as aulas são domiciliares e existe uma necessidade de de aproximação geográfica de professores e alunos.
create table neighborhoods(
	idNeighborhood int auto_increment primary key,
    Bnome varchar(20) not null,
    city varchar(20) not null,
    state char(2) not null,
    cityZone enum('Norte', 'Sul', 'Leste', 'Oeste') not null
);

-- Criando a tabela dos responsáveis pelos alunos
create table guardians(
	idGuardian int auto_increment primary key,
	Fname varchar(20) not null,
    Minit varchar(20),
    Lname varchar(20) not null,
    CPF char(11) not null unique,
    contact char(11) not null
);

-- Criando a tabela das disciplinas
create table subjects(
	idSubject int auto_increment primary key,
    Dname varchar(20) not null
);

-- Criando a tabela dos alunos
create table students(
	idStudent int auto_increment primary key,
    idGuardian int not null,
    idNeighborhood int not null,
    street varchar(50) not null,
	num varchar(6) not null,
    Fname varchar(20) not null,
    Minit varchar(20),
    Lname varchar(20) not null,
    CPF char(11) not null unique,
    contact char(11),
    gradeLevel enum('4° ano EF', '5° ano EF', '6° ano EF', '7° ano EF', '8° ano EF', '9° ano EF', '1° ano EM', '2° ano EM', '3° ano EM') not null,
    constraint fk_students_guardian foreign key (idGuardian) 
		references guardians(idGuardian),
    constraint fk_students_neighborhood foreign key (idNeighborhood) 
		references neighborhoods(idNeighborhood)
);

-- Criando a tabela dos professores
create table teachers(
	idTeacher int auto_increment primary key,
    idNeighborhood int not null,
    street varchar(50) not null,
	num varchar(6) not null,
	Fname varchar(20) not null,
    Minit varchar(20),
    Lname varchar(20) not null,
    CNPJ char(14) not null unique,
    CPF char(11) unique,
    contact char(11) not null,
	constraint fk_teachers_neighborhood foreign key (idNeighborhood) 
		references neighborhoods(idNeighborhood)
);

-- Criando a tabela que relaciona professores, disciplinas e a série em que cada um leciona
create table teacherSubject(
	idTeacher int,
    idSubject int,
    gradeLevel enum('4° ano EF', '5° ano EF', '6° ano EF', '7° ano EF', '8° ano EF', '9° ano EF', '1° ano EM', '2° ano EM', '3° ano EM') not null,
    primary key (idTeacher, idSubject, gradeLevel),
    constraint fk_TS_teacher foreign key (idTeacher) 
		references teachers(idTeacher),
    constraint fk_TS_subject foreign key (idSubject) 
		references subjects(idSubject)
);

-- criando tabela de aulas fixas
create table recurringClasses(
	idRecurringClasse int auto_increment primary key,
    idPackage int not null,
    dayWeek enum('segunda-feira', 'terça-feira', 'quarta-feira', 'quinta-feira', 'sexta-feira', 'sábado', 'domingo') not null,
    timeClasse time not null,
    startDate date not null,
    endDate date,
    durationMinutes int not null default 60,
	idTeacher int not null,
    idStudent int not null,
    idSubject int not null,
    gradeLevel enum('4° ano EF', '5° ano EF', '6° ano EF', '7° ano EF', '8° ano EF', '9° ano EF', '1° ano EM', '2° ano EM', '3° ano EM') not null,
    constraint fk_rc_student foreign key (idStudent) 
        references students(idStudent),
    constraint fk_rc_teachersubject foreign key (idTeacher, idSubject, gradeLevel) 
        references teacherSubject(idTeacher, idSubject, gradeLevel)
);

-- criando tabela de aulas 
create table classes(
	idClasse int auto_increment primary key,
    idTeacher int not null,
    idStudent int not null,
    idSubject int not null,
    idRecurringClasse int,
	gradeLevel enum('4° ano EF', '5° ano EF', '6° ano EF', '7° ano EF', '8° ano EF', '9° ano EF', '1° ano EM', '2° ano EM', '3° ano EM'),
    classDate date not null,
    classTime time not null,
    durationMinutes int not null default 60,
    price decimal(6,2) not null default 90.00,
    typeClasse enum('Fixa', 'Esporádica') not null,
    classStatus enum('Agendada', 'Reagendada', 'Realizada', 'Cancelada') not null,
    constraint fk_classes_student foreign key (idStudent) 
		references students(idStudent),
    constraint fk_classes_recurringClasse foreign key (idRecurringClasse) 
		references recurringClasses(idRecurringClasse),
    constraint fk_classes_teachersubject foreign key (idTeacher, idSubject, gradeLevel) 
		references teacherSubject (idTeacher, idSubject, gradeLevel)
);






    

    
    
    
    
    

    
	
	

    
	




    
    
    
    

