DROP TABLE IF EXISTS modulos;
DROP TABLE IF EXISTS aulas;
DROP TABLE IF EXISTS aluno;
DROP TABLE IF EXISTS turmas;
 
CREATE TABLE aulas(
	id serial,
	titulo varchar(60),
	url varchar (90),
	descricao varchar (300), 
	Primary Key(id)	
);

CREATE TABLE aluno(
	idmatrícula serial,
	nome varchar(80) NOT NULL,
	CPF varchar (25) UNIQUE ,
	endereço varchar (90),
	Primary Key (idmatrícula)
);

CREATE TABLE turmas(
	id serial,
	Ano varchar (30),
	idAluno int,
	Primary Key (id),
	Foreign Key (idaluno) REFERENCES aluno (idmatrícula)
);

CREATE TABLE modulos(
	id serial, 
	nome varchar(50) NOT NULL,
	idAulas int,
	Primary Key(id),
	Foreign Key (idaulas) REFERENCES aulas (id)
);

CREATE TABLE curso(
	nome varchar (80) NOT NULL,
	idmodulo int,
	idturma int, 
	Primary Key (id),
	Foreign Key (idmodulos) REFERENCES modulos (id),
	Foreign Key (idturma) REFERENCES turmas (id)
);
