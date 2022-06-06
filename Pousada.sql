-- DROP TABLE IF EXISTS pousada;
-- DROP TABLE IF EXISTS quarto;
-- DROP TABLE IF EXISTS cliente;
-- DROP TABLE IF EXISTS reserva;
-- DROP TABLE IF EXISTS endereco;

-- CREATE TABLE pousada(
-- 	id serial NOT NULL UNIQUE,
-- 	nome varchar(30) NOT NULL UNIQUE,
-- 	PRIMARY KEY(id)
-- );

-- CREATE TABLE endereco(
-- 	id serial NOT NULL UNIQUE,
-- 	logradouro varchar(50) NOT NULL,
-- 	numero int NOT NULL,
-- 	complemento varchar(30),
-- 	bairro varchar(30) NOT NULL,
-- 	cidade varchar(20) NOT NULL,
-- 	cep varchar(15),
-- 	uf varchar(20) NOT NULL,
-- 	PRIMARY KEY(id)
-- );

-- CREATE TABLE quarto(
-- 	id serial NOT NULL UNIQUE,
-- 	id_pousada int,
-- 	tipo varchar(20),
-- 	isOcupado boolean NOT NULL,
-- 	numeroQuarto int NOT NULL,
-- 	PRIMARY KEY(id),
-- 	FOREIGN KEY(id_pousada) REFERENCES pousada(id) 
-- );

-- CREATE TABLE cliente(
-- 	id serial NOT NULL UNIQUE,
-- 	id_endereco int,
-- 	nome varchar(30) NOT NULL,
-- 	rg varchar(20) NOT NULL,
-- 	PRIMARY KEY(id),
-- 	FOREIGN KEY(id_endereco) REFERENCES endereco(id) 
-- );

-- CREATE TABLE reserva(
-- 	id serial NOT NULL UNIQUE,
-- 	id_cliente int,
-- 	id_quarto int,
-- 	data varchar(20) NOT NULL,
-- 	PRIMARY KEY(id),
-- 	FOREIGN KEY(id_cliente) REFERENCES cliente(id),
-- 	FOREIGN KEY(id_quarto) REFERENCES quarto(id) 
-- );

-- INSERT INTO endereco (logradouro, numero, complemento, bairro, cidade, cep, uf)
-- 	VALUES
-- 	('Rua dos Paianazes', 20, 'Casa', 'Alecrim', 'Natal', '59037-350', 'RN'),
-- 	('Rua Doutor Manoel Barbosa', 10, 'Apartamento 110', 'Ponto Novo', 'Aracaju', '49047-130', 'SE'),
-- 	('Vila Clarão', 51, 'Casa', 'Sacramenta', 'Belém', '66120-354', 'PA'),
-- 	('Rua Rolândia', 34, 'Casa', 'Loteamento Umuarama II', 'Sinop', '78559-459', 'MT'),
-- 	('Rua 2', 24, 'Casa', 'Bom Jardim', 'Fortaleza', '60546-230', 'CE'),
-- 	('Rua Monsenhor Alcides A. Peixoto', 333, 'Apartamento 100', 'Nova Cidade', 'Manaus', '69017-050', 'AM'),
-- 	('Estrada Costa Gama', 78, 'Casa', 'Belém Velho', 'Porto Alegre', '91787-318', 'RS'),
-- 	('Rua São Vicente', 01, 'Casa', 'Jacintinho', 'Maceió', '57042-121', 'AL'),
-- 	('Rua 17 de Março', 32, 'Apartamento 2', 'Conjunto Procon', 'Rio Branco', '69918-646', 'AC'),
-- 	('Avenida Sete de Setembro', 44, 'Casa', 'Jardim Clodoaldo', 'Cacoal', '76963-550', 'RO'),
--  ('Travessa Dionizio Bentes', 94, 'Casa', 'Ibiza', 'Altamira', '68376-777', 'PA'),
-- 	('Rua Santa Lúcia', 96, 'Apartamento 9', 'Olaria', 'Canoas', '92035-518', 'RS'),
-- 	('Rua do Asfalto', 04, 'Casa', 'Nova Brasília', 'Candeias', '65635-558', 'MA'),
-- 	('Vila Palmira', 74, 'Apartamento 9', 'Itaperi', 'Fortaleza', '60714-302', 'CE'),
-- 	('Rua Jorge Salis Goulart', 67, 'Casa', 'Jardim São Pedro', 'Porto Alegre', '68376-777', 'RS'),
-- 	('Alameda 12', 94, 'Casa', 'Plano Diretor Sul', 'Palmas', '77021-602', 'TO'),
-- 	('Rua Amaral Moreira', 21, 'Casa', 'Parque das Águas', 'Santana', '97571-680', 'RS'),
-- 	('Alameda Rosa', 08, 'Casa', 'Parque Industrial Mingone', 'Luziânia', '72855-063', 'GO'),
-- 	('Quadra E', 458, 'Casa', 'União das Vilas', 'Uruguaiana', '97509-604', 'RS'),
-- 	('Avenida dos Diamantes', 452, 'Casa', 'Parque das Gemas', 'Ariquemes', '76875-885', 'RO');

-- INSERT INTO pousada (nome)
-- 	VALUES
-- 	('Pousada Tia Rosa');

-- INSERT INTO quarto (id_pousada, tipo, isOcupado, numeroQuarto)
-- 	VALUES
-- 	(1, 'Suite', False, 101),
-- 	(1, 'Suite', False, 102),
-- 	(1, 'Suite', False, 103),
-- 	(1, 'Suite', True, 104),
-- 	(1, 'Suite', True, 105),
-- 	(1, 'Master', True, 201),
-- 	(1, 'Master', True, 202),
-- 	(1, 'Master', True, 203),
-- 	(1, 'Master', True, 204),
-- 	(1, 'Master', False, 205),
-- 	(1, 'Deluxe', False, 301),
-- 	(1, 'Deluxe', False, 302),
-- 	(1, 'Deluxe', True, 303),
-- 	(1, 'Deluxe', False, 304),
-- 	(1, 'Deluxe', False, 305),
-- 	(1, 'Duplo Solteiro', False, 401),
-- 	(1, 'Duplo Solteiro', True, 402),
-- 	(1, 'Duplo Solteiro', False, 403),
-- 	(1, 'Duplo Solteiro', True, 404),
-- 	(1, 'Duplo Solteiro', False, 405);

-- INSERT INTO cliente (id_endereco, nome, rg)
-- 	VALUES
-- 	(1, 'Claidir Roman', '50.006.339-4'),
-- 	(4, 'Cleiton Otávio', '50.006.339-5'),
-- 	(5, 'Gabriela Moreira', '50.006.339-6'),
-- 	(6, 'Anna Laura', '50.006.339-7'),
-- 	(7, 'Ariany Chagas', '50.006.339-8'),
-- 	(8, 'Gabriel Broering', '50.006.339-9'),
-- 	(10, 'Igor Rosiak', '50.006.331-0'),
-- 	(12, 'Paulo German', '50.006.331-1'),
-- 	(13, 'Rodrigo Faro', '50.006.331-2'),
-- 	(15, 'Arthur Casemiro', '50.006.331-3'),
-- 	(16, 'Neymar Coutinho', '50.006.331-4');

-- INSERT INTO reserva (id_cliente, id_quarto, data)
-- 	VALUES
-- 	(1, 1, '10/06/2022'),
-- 	(2, 2, '13/06/2022'),
-- 	(3, 3, '13/06/2022'),
-- 	(4, 10, '14/06/2022'),
-- 	(5, 11, '15/06/2022'),
-- 	(6, 12, '20/06/2022'),
-- 	(7, 14, '22/06/2022'),
-- 	(8, 15, '03/07/2022'),
-- 	(9, 18, '05/07/2022'),
-- 	(10, 20, '01/08/2022');

-- SELECT * FROM quarto
-- WHERE isOcupado = false;

-- SELECT 
-- 	reserva.id_cliente,
-- 	reserva.id_quarto,
-- 	reserva.data,
-- 	cliente.nome
-- FROM reserva
-- INNER JOIN cliente ON
-- reserva.id_cliente = cliente.id

-- SELECT 
-- 	quarto.numeroQuarto,
-- 	quarto.isOcupado,
-- 	quarto.tipo,
-- 	reserva.id_quarto,
-- 	reserva.data,
-- 	cliente.nome
-- 	FROM quarto
-- 	INNER JOIN reserva ON
-- 	quarto.id = reserva.id_quarto
-- 	INNER JOIN cliente ON
-- 	reserva.id_cliente = cliente.id


	
	
	


