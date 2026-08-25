-- Realizando queries

-- Quantos filhos cada responsável tem matriculados?
select 
	g.idGuardian, 
    concat(g.Fname, ' ', g.Lname) as Guardian,
    count(*) as totalFilhos
from guardians g 
join students s
	on s.idGuardian = g.idGuardian
group by g.idGuardian
order by totalFilhos desc;

-- Qual é a disciplina mais procurada?
select
	sub.Dname,
    count(*) as totalAulas
from classes c 
join subjects sub 
	on sub.idSubject = c.idSubject
group by sub.Dname
order by totalAulas desc;

-- Quais professores ensinam matemática e moram na mesma cidade e mesma zona que o aluno 1, 
-- considerando que sejam professores que lecionam para a mesma série que o aluno em questão?
select
	t.idTeacher,
    concat(t.Fname, ' ', t.Lname) as nameTeacher,
    sub.Dname as nameSubject,
    concat(s.Fname, ' ', s.Lname) as nameStudent,
    ts.gradeLevel,
    nt.city as cityTeacher,
    nt.cityZone as zoneTeacher,
    ns.city as cityStudent,
    ns.cityZone as zoneStudent
from teachers t 
join teacherSubject ts
	on t.idTeacher = ts.idTeacher
join subjects sub 
	on sub.idSubject = ts.idSubject
join neighborhoods nt 
	on nt.idNeighborhood = t.idNeighborhood
join students s 
	on s.gradeLevel = ts.gradeLevel
join neighborhoods ns
	on ns.idNeighborhood = s.idNeighborhood
where s.idStudent = 1
	and sub.Dname = 'Matemática'
    and ns.city = nt.city
    and ns.cityZone = nt.cityZone;
    
-- Quantas aulas cada aluno realizou em maio, 
-- quanto cada um pagou à agência 
-- e qual foi sua participação percentual na receita total do mês?
select
	s.idStudent,
    concat(s.Fname, ' ', s.Lname) as nameStudent,
    count(*) as totalClasses,
    sum(c.price) as totalPay,
    concat(
		round(
			sum(c.price) / sum(sum(c.price)) over() * 100, 2
		), 
		'%'
    ) as percentageOfTotal
from classes c
join students s 
	on s.idStudent = c.idStudent
where c.classStatus = 'Realizada'
	and c.classDate >= '2026-05-01'
    and c.ClassDate < '2026-06-01'
group by s.idStudent
order by totalPay desc;

-- Quais alunos tem aula de física?
select 
	idStudent, 
	concat(Fname, ' ', Lname) as nameStudent, 
    gradeLevel
from students
where idStudent in (
    select idStudent
    from classes
    where idSubject = (select idSubject from subjects where Dname = 'Física')
);


    

    


    
    






