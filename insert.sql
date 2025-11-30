-- -----------------------------------------------------
-- SCRIPT DE INSERÇÃO (DML)
-- Sistema STUR – Sistema de Transporte Urbano Rápido
-- -----------------------------------------------------

USE stur_db;

-- -----------------------------------------------------
-- 1. INSERIR MOTORISTAS
-- -----------------------------------------------------
INSERT INTO MOTORISTA (id_motorista, nome, cpf, telefone, categoria_cnh) VALUES
(1, 'Carlos Eduardo Silva', '123.456.789-00', '(11) 90001-0001', 'D'),
(2, 'Marcos Pereira',       '987.654.321-11', '(11) 90001-0002', 'D'),
(3, 'José Antônio Ribeiro', '321.654.987-22', '(11) 90001-0003', 'E'),
(4, 'Fernando Almeida',     '456.789.123-33', '(11) 90001-0004', 'D'),
(5, 'Juliano Monteiro',     '159.753.486-44', '(11) 90001-0005', 'E');


-- -----------------------------------------------------
-- 2. INSERIR ÔNIBUS
-- -----------------------------------------------------
INSERT INTO ONIBUS (id_onibus, numero_frota, placa, capacidade) VALUES
(1, 'FROTA-101', 'ABC1A23', 45),
(2, 'FROTA-102', 'BCD2B34', 50),
(3, 'FROTA-103', 'CDE3C45', 42),
(4, 'FROTA-104', 'DEF4D56', 48),
(5, 'FROTA-105', 'EFG5E67', 46);


-- -----------------------------------------------------
-- 3. INSERIR ROTAS
-- -----------------------------------------------------
INSERT INTO ROTA (id_rota, nome_rota, origem, destino) VALUES
(1, 'Linha 101 – Centro / Bairro Azul', 'Terminal Central', 'Bairro Azul'),
(2, 'Linha 202 – Vila Nova / Estação Sul', 'Vila Nova', 'Estação Sul'),
(3, 'Linha 305 – Aeroporto / Centro', 'Aeroporto', 'Centro'),
(4, 'Linha 410 – Bairro Verde / Shopping Norte', 'Bairro Verde', 'Shopping Norte'),
(5, 'Linha 512 – Terminal Oeste / Centro', 'Terminal Oeste', 'Centro');


-- -----------------------------------------------------
-- 4. INSERIR VIAGENS
-- (Viagem = Rota + Motorista + Ônibus + Horários)
-- -----------------------------------------------------
INSERT INTO VIAGEM 
(id_viagem, data_viagem, horario_partida, horario_chegada, id_onibus, id_motorista, id_rota)
VALUES
(1, '2025-02-10', '06:00:00', '06:45:00', 1, 1, 1),
(2, '2025-02-10', '07:00:00', '07:50:00', 2, 2, 2),
(3, '2025-02-10', '08:10:00', '08:55:00', 3, 3, 3),
(4, '2025-02-10', '09:30:00', '10:20:00', 4, 4, 4),
(5, '2025-02-10', '10:00:00', '10:40:00', 5, 5, 5),

(6, '2025-02-11', '06:00:00', '06:45:00', 1, 2, 1),
(7, '2025-02-11', '07:00:00', '07:50:00', 2, 3, 2),
(8, '2025-02-11', '08:10:00', '08:55:00', 3, 4, 3),
(9,  '2025-02-11', '09:30:00', '10:20:00', 4, 5, 4),
(10, '2025-02-11', '10:00:00', '10:40:00', 5, 1, 5);
