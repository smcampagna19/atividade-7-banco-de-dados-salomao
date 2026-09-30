USE oficina_mecanica_db;
GO

INSERT INTO clientes (nome, cpf, telefone, email, endereco, cidade)
VALUES ('João da Silva','123.456.789-00','(14) 99876-1234','joao.silva@email.com','Rua das Flores, 100','Botucatu');
INSERT INTO clientes (nome, cpf, telefone, email, endereco, cidade)
VALUES ('Mariana de Oliveira','987.654.321-00','(14) 99123-4567','mariana.oliveira@email.com','Rua Central, 250','Pardinho');
INSERT INTO clientes (nome, cpf, telefone, email, endereco, cidade)
VALUES ('Carlos Menezes','321.987.654-11','(14) 99654-3210','carlos.mennezis@email.com','Avenida Brasil, 80','São Manuel');
INSERT INTO clientes (nome, cpf, telefone, email, endereco, cidade)
VALUES ('Ana Beatriz de Souza','456.789.123-22','(14) 99444-8899','ana.souza@email.com','Rua das Acácias, 45','Botucatu');
SELECT * FROM clientes;

INSERT INTO veiculos (id_cliente, placa, marca, modelo, ano_fabricacao, chassi)
VALUES (1,'ABC1A23','Fiat','Uno',2015,'9BWZZZ377VT004251');
INSERT INTO veiculos (id_cliente, placa, marca, modelo, ano_fabricacao, chassi)
VALUES (2,'XYZ9Z99','Chevrolet','Onix',2020,'9BG116GW04C400001');
INSERT INTO veiculos (id_cliente, placa, marca, modelo, ano_fabricacao, chassi)
VALUES (3,'JKL3D45','Toyota','Corolla',2018,'8AJZZZ123J1234567');
INSERT INTO veiculos (id_cliente, placa, marca, modelo, ano_fabricacao, chassi)
VALUES (4,'QWE7E77','Honda','Fit',2017,'93HGE8850EZ500123');
SELECT * FROM veiculos;

INSERT INTO mecanicos (nome, cpf, telefone, email, data_contratacao, funcao) VALUES
('Rafael dos Santos','888.999.000-11','(14) 99777-1234','rafael.santos@autotechnology.com','2025-01-01','Mecânico Geral'),
('Luciana Fernandes','777.888.999-22','(14) 99666-4567','luciana.fernandes@autotechnology.com','2025-06-15','Especialista em Freios'),
('Pedro Almeida','666.777.888-33','(14) 99555-7890','pedro.almeida@autotechnology.com','2023-09-10','Eletricista Automotivo'),
('Carla Monteiro','555.666.777-44','(14) 99444-3210','carla.monteiro@autotechnology.com','2024-06-01','Mecânica de Veículos Leves');
SELECT * FROM mecanicos;

INSERT INTO ordens_servico (id_veiculo, id_mecanico, data_abertura, estimativa_entrega, descricao, valor_total, status) VALUES
(1,1,'2025-09-20T08:30:00','2025-09-21T08:30:00','Troca de óleo e filtro',150.00,'Concluída'),
(2,2,'2025-09-21T10:00:00','2025-09-23T10:00:00','Substituição de pastilhas de freio dianteiras',300.00,'Em Andamento'),
(3,3,'2025-09-22T14:15:00','2025-09-23T08:00:00','Diagnóstico de falha no sistema elétrico',120.00,'Aberta'),
(4,4,'2025-09-23T09:45:00','2025-09-24T09:45:00','Alinhamento e balanceamento',100.00,'Cancelada');
SELECT * FROM ordens_servico;

UPDATE veiculos SET modelo = 'Civic' WHERE placa = 'QWE7E77';
SELECT * FROM veiculos WHERE placa = 'QWE7E77';

UPDATE clientes SET email = 'carlos.menezes@email.com'
WHERE id_cliente = 3 AND cpf = '321.987.654-11';
SELECT * FROM clientes WHERE id_cliente = 3;

DELETE FROM ordens_servico
WHERE id_ordem = 4 AND id_veiculo = 4 AND status = 'Cancelada';
SELECT * FROM ordens_servico;

