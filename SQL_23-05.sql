-- CREATE TABLE departamento(
-- id serial,
-- nome varchar(50) not null,
-- PRIMARY KEY (id)
-- );

-- CREATE TABLE funcionario(
-- id serial,
-- nome varchar(50) not null,
-- departamento_id integer,
-- PRIMARY KEY(id),
-- FOREIGN KEY (departamento_id) REFERENCES departamento(id)
-- );

-- INSERT INTO departamento (nome)VALUES('Desenvolvimento');
-- INSERT INTO departamento (nome)VALUES('Teste de Software');
-- INSERT INTO departamento (nome)VALUES('Implantação');
-- INSERT INTO departamento (nome)VALUES('Comercial');
-- INSERT INTO departamento (nome)VALUES('Vendas');

-- INSERT INTO funcionario (nome, departamento_id)VALUES ('Anna',1);
-- INSERT INTO funcionario (nome, departamento_id)VALUES ('Peterson',2);
-- INSERT INTO funcionario (nome, departamento_id)VALUES ('Diego',3);
-- INSERT INTO funcionario (nome, departamento_id)VALUES ('Matheus',4);
-- INSERT INTO funcionario (nome, departamento_id)VALUES ('Bernardo',5);
-- INSERT INTO funcionario (nome, departamento_id)VALUES ('Igor',1);
-- INSERT INTO funcionario (nome, departamento_id)VALUES ('Mazzolla',4);

-- SELECT * FROM departamento, funcionario
-- WHERE departamento_id = departamento.id
 
--  SELECT f.nome, d.nome AS departamento FROM funcionario AS f
--  INNER JOIN departamento AS d ON d.id = f.departamento_id

-- SELECT f.nome, d.nome AS departamento FROM funcionario AS f
-- LEFT JOIN departamento AS d ON d.id = f.departamento_id

-- SELECT f.*, d.nome AS departamento FROM funcionario AS f
-- INNER JOIN departamento AS d ON d.id = f.departamento_id
-- WHERE d.id = 1