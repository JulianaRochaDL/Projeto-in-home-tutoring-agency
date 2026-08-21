-- Inserindo dados nas tabelas

use tutoring_agency;

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
        

		
