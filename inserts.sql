-- Inserindo dados nas tabelas

use tutoring_agency;

-- insere os bairros onde residem alunos e professores
insert into neighborhoods (Bnome, city, state, cityZone)
	values 
		('Centro', 'Caruaru', 'PE', 'Norte'),
        ('Boa Vista', 'Caruaru', 'PE', 'Norte'),
        ('Indianópolis', 'Caruaru', 'PE', 'Sul'),
        ('Maurício de Nassau', 'Caruaru', 'PE', 'Leste'),
        ('Petrópolis', 'Caruaru', 'PE', 'Oeste'),
        ('Kennedy', 'Caruaru', 'PE', 'Sul'),
        ('Salgado', 'Caruaru', 'PE', 'Sul'),
        ('Alto do Moura', 'Caruaru', 'PE', 'Oeste'),
        ('Cidade Alta', 'Caruaru', 'PE', 'Norte'),
        ('Universitário', 'Caruaru', 'PE', 'Sul'),
        ('Boa Viagem', 'Recife', 'PE', 'Sul'),
        ('Setúbal', 'Recife', 'PE', 'Sul'),
        ('Imbiribeira', 'Recife', 'PE', 'Sul'),
        ('Casa Forte', 'Recife', 'PE', 'Norte'),
        ('Casa Amarela', 'Recife', 'PE', 'Norte'),
        ('Madalena', 'Recife', 'PE', 'Oeste'),
        ('Iputinga', 'Recife', 'PE', 'Oeste'),
        ('Várzea', 'Recife', 'PE', 'Oeste'),
        ('Boa Vista', 'Recife', 'PE', 'Norte'),
        ('Espinheiro', 'Recife', 'PE', 'Norte'),
        ('Barra', 'Salvador', 'BA', 'Sul'),
		('Pituba', 'Salvador', 'BA', 'Leste'),
		('Itapuã', 'Salvador', 'BA', 'Leste'),
		('Brotas', 'Salvador', 'BA', 'Oeste'),
		('Rio Vermelho', 'Salvador', 'BA', 'Leste'),
		('Federação', 'Salvador', 'BA', 'Oeste'),
		('Cabula', 'Salvador', 'BA', 'Norte'),
		('Liberdade', 'Salvador', 'BA', 'Norte'),
		('Ondina', 'Salvador', 'BA', 'Sul'),
		('Pernambués', 'Salvador', 'BA', 'Norte');

-- insere os dados dos responsáveis
insert into guardians (Fname, Minit, Lname, CPF, contact)
	values
		('Carlos', 'A', 'Silva', '11111111111', '81988887777'),
        ('Mariana', NULL, 'Costa', '22222222222', '81977776666'),
        ('José', 'R', 'Santos', '33333333333', '81966665555'),
        ('Patrícia', 'C', 'Nunes', '11122233344', '81955553333'),
        ('Eduardo', NULL, 'Melo', '22233344455', '81944442222'),
        ('Vanessa', 'T', 'Cavalcanti', '33344455566', '81933331111'),
        ('Rodrigo', 'B', 'Farias', '44455566677', '81922220000'),
        ('Simone', NULL, 'Freitas', '55566677788', '81911119999'),
        ('Marcelo', 'D', 'Guimarães', '66677788899', '81900008888'),
        ('Tatiane', 'V', 'Ramos', '77788899900', '81899997777'),
        ('Fernanda', 'M', 'Oliveira', '44444444444', '87955554444'),
        ('Ricardo', NULL, 'Pereira', '55555555555', '87944443333'),
        ('Juliana', 'S', 'Souza', '66666666666', '87933332222'),
        ('Alexandre', 'P', 'Correia', '44455566611', '87922221100'),
        ('Débora', NULL, 'Vieira', '55566677722', '87911110099'),
        ('Fábio', 'R', 'Cardoso', '66677788833', '87900009988'),
        ('Renata', 'L', 'Monteiro', '77788899944', '87899998877'),
        ('Gustavo', NULL, 'Teixeira', '88899900055', '87888887766'),
        ('Priscila', 'A', 'Batista', '99900011166', '87877776655'),
        ('Leandro', 'F', 'Moreira', '10011122277', '87866665544'),
        ('Paulo', 'H', 'Rocha', '77777777777', '71922221111'),
        ('Beatriz', NULL, 'Lima', '88888888888', '71911110000'),
        ('André', 'L', 'Almeida', '99999999999', '71900009999'),
        ('Camila', 'F', 'Barbosa', '10101010101', '71899998888'),
        ('Thiago', NULL, 'Nascimento', '77788811122', '71888887777'),
        ('Aline', 'K', 'Dantas', '88899922233', '71877776666'),
        ('Bruno', 'M', 'Carvalho', '99900033344', '71866665555'),
        ('Cristiane', NULL, 'Azevedo', '10011144455', '71855554444'),
        ('Diego', 'S', 'Pinheiro', '11122255566', '71844443333'),
        ('Elaine', 'C', 'Sampaio', '22233366677', '71833332222');
        
-- insere as disciplinas
insert into subjects(Dname)
	values
		('Matemática'),
        ('Português'),
        ('História'),
        ('Geografia'),
        ('Ciências'),
        ('Física'),
        ('Química'),
        ('Biologia'),
        ('Inglês'),
        ('Espanhol'),
        ('Redação');
 

 -- insere os dados dos alunos
insert into students(idGuardian, idNeighborhood, street, num, Fname, Minit, Lname, CPF, contact, gradeLevel)
	values
		(1, 11, 'Rua da Aurora', '120', 'Larissa', 'A', 'Silva', '10000000001', '81988887700', '6° ano EF'),
        (1, 11, 'Rua da Aurora', '120', 'Matheus', 'A', 'Silva', '10000000002', '81988887700', '2° ano EM'),
        (1, 11, 'Rua da Aurora', '120', 'Rafaela', 'A', 'Silva', '10000000003', '81988887700', '9° ano EF'),
        (2, 12, 'Av. Boa Viagem', '450', 'Isabela', NULL, 'Costa', '10000000004', '81977776600', '9° ano EF'),
        (2, 12, 'Av. Boa Viagem', '450', 'Felipe', NULL, 'Costa', '10000000005', '81977776600', '5° ano EF'),
        (3, 13, 'Rua Imbiribeira', '78', 'Gabriel', 'R', 'Santos', '10000000006', '81966665500', '4° ano EF'),
        (4, 14, 'Rua Casa Forte', '33', 'Sophia', 'C', 'Nunes', '10000000007', '81955553300', '1° ano EM'),
        (4, 14, 'Rua Casa Forte', '33', 'Bento', 'C', 'Nunes', '10000000008', '81955553300', '7° ano EF'),
        (5, 15, 'Av. Casa Amarela', '910', 'Enzo', NULL, 'Melo', '10000000009', '81944442200', '5° ano EF'),
        (6, 16, 'Rua Madalena', '210', 'Laura', 'T', 'Cavalcanti', '10000000010', '81933331100', '7° ano EF'),
        (6, 16, 'Rua Madalena', '210', 'Vicente', 'T', 'Cavalcanti', '10000000011', '81933331100', '3° ano EM'),
        (6, 16, 'Rua Madalena', '210', 'Antonella', 'T', 'Cavalcanti', '10000000012', '81933331100', '6° ano EF'),
        (7, 17, 'Rua Iputinga', '55', 'Davi', 'B', 'Farias', '10000000013', '81922220000', '3° ano EM'),
        (7, 17, 'Rua Iputinga', '55', 'Clara', 'B', 'Farias', '10000000014', '81922220000', '8° ano EF'),
        (8, 18, 'Rua Várzea', '145', 'Manuela', NULL, 'Freitas', '10000000015', '81911119900', '8° ano EF'),
        (9, 19, 'Rua Boa Vista', '300', 'Pedro', 'D', 'Guimarães', '10000000016', '81900008800', '6° ano EF'),
        (9, 19, 'Rua Boa Vista', '300', 'Luna', 'D', 'Guimarães', '10000000017', '81900008800', '4° ano EF'),
        (10, 20, 'Rua Espinheiro', '89', 'Alice', 'V', 'Ramos', '10000000018', '81899997700', '9° ano EF'),
        (11, 1, 'Rua Vigário Freire', '15', 'Miguel', 'M', 'Oliveira', '10000000019', '87955554400', '5° ano EF'),
        (11, 1, 'Rua Vigário Freire', '15', 'Helena', 'M', 'Oliveira', '10000000020', '87955554400', '1° ano EM'),
        (12, 2, 'Rua Treze de Maio', '200', 'Arthur', NULL, 'Pereira', '10000000021', '87944443300', '4° ano EF'),
        (12, 2, 'Rua Treze de Maio', '200', 'Maitê', NULL, 'Pereira', '10000000022', '87944443300', '2° ano EM'),
        (12, 2, 'Rua Treze de Maio', '200', 'Otávio', NULL, 'Pereira', '10000000023', '87944443300', '8° ano EF'),
        (13, 3, 'Rua Ver. Antônio', '48', 'Valentina', 'S', 'Souza', '10000000024', '87933332200', '8° ano EF'),
        (14, 4, 'Av. Rui Barbosa', '77', 'Heitor', 'P', 'Correia', '10000000025', '87922221100', '2° ano EM'),
        (14, 4, 'Av. Rui Barbosa', '77', 'Isadora', 'P', 'Correia', '10000000026', '87922221100', '9° ano EF'),
        (15, 5, 'Rua do Sol', '910', 'Alícia', NULL, 'Vieira', '10000000027', '87911110000', '6° ano EF'),
        (16, 6, 'Rua Padre Correia', '32', 'Bernardo', 'R', 'Cardoso', '10000000028', '87900009900', '9° ano EF'),
        (16, 6, 'Rua Padre Correia', '32', 'Liz', 'R', 'Cardoso', '10000000029', '87900009900', '5° ano EF'),
        (17, 7, 'Rua São Judas', '60', 'Cecília', 'L', 'Monteiro', '10000000030', '87899998800', '3° ano EM'),
        (18, 8, 'Rua Duque de Caxias', '150', 'Théo', NULL, 'Teixeira', '10000000031', '87888887700', '7° ano EF'),
        (18, 8, 'Rua Duque de Caxias', '150', 'Agatha', NULL, 'Teixeira', '10000000032', '87888887700', '4° ano EF'),
        (19, 9, 'Rua João Pessoa', '25', 'Maria Luiza', 'A', 'Batista', '10000000033', '87877776600', '5° ano EF'),
        (20, 10, 'Av. Universitária', '400', 'Lorenzo', 'F', 'Moreira', '10000000034', '87866665500', '1° ano EM'),
        (20, 10, 'Av. Universitária', '400', 'Aurora', 'F', 'Moreira', '10000000035', '87866665500', '6° ano EF'),
        (21, 21, 'Av. Oceânica', '500', 'Sarah', 'H', 'Rocha', '10000000036', '71922221100', '4° ano EF'),
        (21, 21, 'Av. Oceânica', '500', 'Lucas', 'H', 'Rocha', '10000000037', '71922221100', '9° ano EF'),
        (21, 21, 'Av. Oceânica', '500', 'Beatriz', 'H', 'Rocha', '10000000038', '71922221100', '7° ano EF'),
        (22, 22, 'Rua Pituba', '88', 'Julia', NULL, 'Lima', '10000000039', '71911110000', '2° ano EM'),
        (22, 22, 'Rua Pituba', '88', 'Noah', NULL, 'Lima', '10000000040', '71911110000', '5° ano EF'),
        (23, 23, 'Av. Otávio Mangabeira', '320', 'Bryan', 'L', 'Almeida', '10000000041', '71900009900', '6° ano EF'),
        (24, 24, 'Rua Brotas', '17', 'Yasmin', 'F', 'Barbosa', '10000000042', '71899998800', '8° ano EF'),
        (24, 24, 'Rua Brotas', '17', 'Caio', 'F', 'Barbosa', '10000000043', '71899998800', '3° ano EM'),
        (25, 25, 'Rua Fonte do Boi', '63', 'Nicolas', NULL, 'Nascimento', '10000000044', '71888887700', '5° ano EF'),
        (26, 26, 'Rua Federação', '140', 'Melissa', 'K', 'Dantas', '10000000045', '71877776600', '3° ano EM'),
        (26, 26, 'Rua Federação', '140', 'Joaquim', 'K', 'Dantas', '10000000046', '71877776600', '1° ano EM'),
        (27, 27, 'Rua Cabula', '95', 'Vitor', 'M', 'Carvalho', '10000000047', '71866665500', '7° ano EF'),
        (28, 28, 'Rua Liberdade', '22', 'Emanuelly', NULL, 'Azevedo', '10000000048', '71855554400', '1° ano EM'),
        (28, 28, 'Rua Liberdade', '22', 'Samuel', NULL, 'Azevedo', '10000000049', '71855554400', '9° ano EF'),
        (29, 29, 'Av. Oceânica', '610', 'Kaique', 'S', 'Pinheiro', '10000000050', '71844443300', '9° ano EF'),
        (30, 30, 'Rua Pernambués', '48', 'Ayla', 'C', 'Sampaio', '10000000051', '71833332200', '6° ano EF'),
        (30, 30, 'Rua Pernambués', '48', 'Erick', 'C', 'Sampaio', '10000000052', '71833332200', '2° ano EM'),
        (30, 30, 'Rua Pernambués', '48', 'Manuela', 'C', 'Sampaio', '10000000053', '71833332200', '4° ano EF');

-- insere os dados dos professores
insert into teachers(idNeighborhood, street, num, Fname, Minit, Lname, CNPJ, CPF, contact)
	values
		(11, 'Rua da Aurora', '85', 'Renato', 'M', 'Barros', '11222333000181', '20000000001', '81988001122'),
        (12, 'Rua Setúbal', '210', 'Cristina', NULL, 'Amaral', '11222333000182', '20000000002', '81977002233'),
        (14, 'Rua Casa Forte', '44', 'Marcos', 'A', 'Vidal', '11222333000183', '20000000003', '81966003344'),
        (16, 'Rua Madalena', '300', 'Tainá', 'B', 'Rocha', '11222333000184', '20000000004', '81955004455'),
        (18, 'Rua Iputinga', '18', 'Diego', NULL, 'Nogueira', '11222333000185', '20000000005', '81944005566'),
        (1, 'Rua do Comércio', '60', 'Rosana', 'C', 'Peixoto', '11222333000186', '20000000006', '87933006677'),
        (3, 'Rua Nova', '25', 'Igor', 'D', 'Bastos', '11222333000187', '20000000007', '87922007788'),
        (5, 'Rua Pernambuco', '99', 'Luciana', NULL, 'Andrade', '11222333000188', '20000000008', '87911008899'),
        (7, 'Rua Progresso', '150', 'Vinícius', 'E', 'Marinho', '11222333000189', '20000000009', '87900009900'),
        (9, 'Rua São José', '40', 'Adriana', 'F', 'Cunha', '11222333000190', '20000000010', '87899000011'),
        (21, 'Rua Pituba', '77', 'Otávio', NULL, 'Leal', '11222333000191', '20000000011', '71988001133'),
        (23, 'Rua Brotas', '132', 'Bianca', 'G', 'Moraes', '11222333000192', '20000000012', '71977002244'),
        (25, 'Rua Federação', '58', 'Caio', 'H', 'Ribeiro', '11222333000193', '20000000013', '71966003355'),
        (27, 'Rua Liberdade', '90', 'Denise', NULL, 'Fontes', '11222333000194', '20000000014', '71955004466'),
        (29, 'Rua Pernambués', '15', 'Hugo', 'I', 'Assunção', '11222333000195', '20000000015', '71944005577');

-- insere a relação dos professores, disciplinas e séries
insert into teacherSubject(idTeacher,idSubject, gradeLevel)
	values
		(3, 6, '1° ano EM'),
        (3, 6, '2° ano EM'),
        (3, 7, '1° ano EM'),
        (3, 7, '2° ano EM'),
        (3, 8, '1° ano EM'),
        (3, 8, '3° ano EM'),
        (13, 6, '2° ano EM'),
        (13, 6, '3° ano EM'),
        (13, 7, '2° ano EM'),
        (13, 7, '3° ano EM'),
        (13, 8, '1° ano EM'),
        (13, 8, '2° ano EM'),
        (1, 1, '6° ano EF'),
        (1, 1, '9° ano EF'),
        (1, 2, '6° ano EF'),
        (1, 2, '9° ano EF'),
        (1, 11, '9° ano EF'),
        (1, 11, '3° ano EM'),
        (7, 1, '4° ano EF'),
        (7, 1, '8° ano EF'),
        (7, 2, '4° ano EF'),
        (7, 11, '8° ano EF'),
        (7, 2, '8° ano EF'),
        (12, 1, '1° ano EM'),
        (12, 2, '1° ano EM'),
        (12, 2, '9° ano EF'),
        (12, 11, '1° ano EM'),
        (12, 11, '2° ano EM'),
        (11, 1, '1° ano EM'),
        (11, 1, '3° ano EM'),
        (11, 6, '1° ano EM'),
        (11, 6, '2° ano EM'),
        (11, 7, '2° ano EM'),
        (11, 7, '3° ano EM'),
        (4, 1, '2° ano EM'),
        (4, 6, '2° ano EM'),
        (4, 6, '3° ano EM'),
        (4, 7, '3° ano EM'),
        (6, 11, '9° ano EF'),
        (6, 11, '1° ano EM'),
        (6, 3, '7° ano EF'),
        (6, 3, '1° ano EM'),
        (6, 4, '7° ano EF'),
        (6, 4, '9° ano EF'),
        (15, 4, '6° ano EF'),
        (15, 4, '2° ano EM'),
        (15, 3, '6° ano EF'),
        (15, 3, '8° ano EF'),
        (8, 5, '5° ano EF'),
        (8, 5, '9° ano EF'),
        (8, 5, '7° ano EF'),
        (2, 9, '4° ano EF'),
        (2, 9, '8° ano EF'),
        (2, 9, '2° ano EM'),
        (14, 9, '5° ano EF'),
        (14, 9, '9° ano EF'),
        (5, 10, '6° ano EF'),
        (5, 10, '9° ano EF'),
        (5, 10, '3° ano EM'),
        (10, 10, '5° ano EF'),
        (10, 10, '2° ano EM'),
        (9, 11, '8° ano EF'),
        (9, 11, '9° ano EF'),
        (9, 11, '3° ano EM');

-- insere as aulas fixas
insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (1, 1, 1, 1, '6° ano EF', 'terça-feira', '16:00:00', '2026-02-03', '2026-11-30', 60);
set @idRecurring = last_insert_id();
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (1, 1, 1, 1, '6° ano EF', 'quinta-feira', '16:00:00', '2026-02-05', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (2, 7, 6, 1, '4° ano EF', 'segunda-feira', '14:00:00', '2026-02-02', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (2, 7, 6, 1, '4° ano EF', 'quarta-feira', '14:00:00', '2026-02-04', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (3, 12, 7, 1, '1° ano EM', 'segunda-feira', '09:00:00', '2026-02-02', '2026-11-30', 90);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (4, 11, 20, 6, '1° ano EM', 'terça-feira', '10:00:00', '2026-02-03', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (4, 11, 20, 6, '1° ano EM', 'quinta-feira', '10:00:00', '2026-02-05', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (4, 11, 20, 6, '1° ano EM', 'sábado', '10:00:00', '2026-02-07', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (5, 4, 22, 6, '2° ano EM', 'segunda-feira', '17:00:00', '2026-02-02', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (5, 4, 22, 6, '2° ano EM', 'sexta-feira', '17:00:00', '2026-02-06', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (6, 3, 43, 8, '3° ano EM', 'quarta-feira', '11:00:00', '2026-02-04', '2026-11-30', 90);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (6, 3, 43, 8, '3° ano EM', 'sábado', '11:00:00', '2026-02-07', '2026-11-30', 90);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (7, 9, 28, 11, '9° ano EF', 'quinta-feira', '19:00:00', '2026-02-05', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (8, 6, 8, 3, '7° ano EF', 'terça-feira', '18:30:00', '2026-02-03', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (8, 6, 8, 3, '7° ano EF', 'sexta-feira', '18:30:00', '2026-02-06', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (9, 15, 12, 4, '6° ano EF', 'segunda-feira', '08:00:00', '2026-02-02', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (9, 15, 12, 4, '6° ano EF', 'quarta-feira', '08:00:00', '2026-02-04', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (9, 15, 12, 4, '6° ano EF', 'sexta-feira', '08:00:00', '2026-02-06', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (10, 8, 9, 5, '5° ano EF', 'sábado', '09:30:00', '2026-02-07', '2026-11-30', 120);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (11, 2, 14, 9, '8° ano EF', 'terça-feira', '15:00:00', '2026-02-10', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (11, 2, 14, 9, '8° ano EF', 'quinta-feira', '15:00:00', '2026-02-12', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (12, 5, 37, 10, '9° ano EF', 'segunda-feira', '19:30:00', '2026-03-02', '2026-11-30', 90);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (12, 5, 37, 10, '9° ano EF', 'quarta-feira', '19:30:00', '2026-03-04', '2026-11-30', 90);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (13, 14, 49, 9, '9° ano EF', 'sexta-feira', '14:30:00', '2026-02-06', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (14, 10, 40, 10, '5° ano EF', 'terça-feira', '13:00:00', '2026-02-03', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (14, 10, 40, 10, '5° ano EF', 'sábado', '13:00:00', '2026-02-07', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (15, 13, 39, 7, '2° ano EM', 'segunda-feira', '20:00:00', '2026-02-02', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (15, 13, 39, 7, '2° ano EM', 'terça-feira', '20:00:00', '2026-02-03', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);

insert into recurringClasses (idPackage, idTeacher, idStudent, idSubject, gradeLevel, dayWeek, timeClasse, startDate, endDate, durationMinutes)
	values (15, 13, 39, 7, '2° ano EM', 'quinta-feira', '20:00:00', '2026-02-05', '2026-11-30', 60);
set @idRecurring = last_insert_id(); 
call gerar_aulas_fixas(@idRecurring);
        
-- confere quantas aulas fixas foram geradas
select idPackage, count(distinct rc.idRecurringClasse) as diasNaSemana, count(c.idClasse) as totalAulasGeradas
from recurringClasses rc
join classes c on c.idRecurringClasse = rc.idRecurringClasse
group by idPackage
order by idPackage;

-- insere aulas esporádicas
insert into classes (idTeacher, idStudent, idSubject, gradeLevel, classDate, classTime, typeClasse, classStatus, durationMinutes, price) 
	values
		(1, 3, 2, '9° ano EF', '2026-04-10', '10:00:00', 'Esporádica', 'Realizada', 60, 90.00),
		(7, 32, 2, '4° ano EF', '2026-04-11', '15:00:00', 'Esporádica', 'Agendada', 60, 90.00),
		(12, 26, 2, '9° ano EF', '2026-04-12', '09:00:00', 'Esporádica', 'Realizada', 60, 90.00),
		(9, 45, 11, '3° ano EM', '2026-04-13', '19:00:00', 'Esporádica', 'Agendada', 60, 90.00),
		(11, 11, 1, '3° ano EM', '2026-04-14', '14:00:00', 'Esporádica', 'Cancelada', 60, 90.00),
		(15, 41, 3, '6° ano EF', '2026-04-15', '08:30:00', 'Esporádica', 'Realizada', 60, 90.00),
		(8, 31, 5, '7° ano EF', '2026-04-16', '10:30:00', 'Esporádica', 'Agendada', 60, 90.00), 
		(5, 50, 10, '9° ano EF', '2026-04-17', '19:30:00', 'Esporádica', 'Cancelada', 90, 90.00),
		(10, 52, 10, '2° ano EM', '2026-04-18', '13:00:00', 'Esporádica', 'Agendada', 60, 90.00), 
		(13, 39, 8, '2° ano EM', '2026-04-19', '20:00:00', 'Esporádica', 'Agendada', 60, 90.00), 
		(3, 7, 6, '1° ano EM', '2026-04-20', '11:00:00', 'Esporádica', 'Realizada', 60, 90.00),
		(9, 15, 11, '8° ano EF', '2026-04-21', '19:00:00', 'Esporádica', 'Agendada', 60, 90.00), 
		(2, 24, 9, '8° ano EF', '2026-05-05', '16:00:00', 'Esporádica', 'Realizada', 60, 90.00), 
		(6, 12, 3, null, '2026-05-06', '18:00:00', 'Esporádica', 'Agendada', 60, 90.00), 
		(14, 29, 9, '5° ano EF', '2026-05-07', '14:00:00', 'Esporádica', 'Realizada', 60, 90.00);

update classes
set classDate = '2026-09-11'
where idClasse = 2;

update classes
set classDate = '2026-09-14'
where idClasse = 4;

update classes
set classDate = '2026-07-15'
where idClasse = 6;

update classes
set classDate = '2026-10-01'
where idClasse = 7;

update classes
set classDate = '2026-09-17'
where idClasse = 9;

update classes
set classDate = '2026-10-05'
where idClasse = 10;

update classes
set classDate = '2026-08-20'
where idClasse = 11;

update classes
set classDate = '2026-10-13'
where idClasse = 12;

update classes
set classDate = '2026-09-24'
where idClasse = 14;






        
        
        
        

		
