-- -----------------------------------------------------
-- Script de Manipulação (UPDATE / DELETE)
-- Sistema: STUR – Sistema de Transporte Urbano Rápido
-- -----------------------------------------------------

USE stur_db;

-- =====================================================
-- 1. UPDATE – Atualização de Registros
-- =====================================================

-- -----------------------------------------------------
-- UPDATE 1:
-- Objetivo: Atualizar o telefone de um motorista.
-- -----------------------------------------------------
UPDATE MOTORISTA
SET telefone = '(11) 95555-9090'
WHERE id_motorista = 2;


-- -----------------------------------------------------
-- UPDATE 2:
-- Objetivo: Corrigir a capacidade de um ônibus após reforma.
-- -----------------------------------------------------
UPDATE ONIBUS
SET capacidade = 55
WHERE id_onibus = 3;


-- -----------------------------------------------------
-- UPDATE 3:
-- Objetivo: Trocar o motorista responsável por uma viagem.
-- -----------------------------------------------------
UPDATE VIAGEM
SET id_motorista = 1
WHERE id_viagem = 6;


-- -----------------------------------------------------
-- UPDATE 4:
-- Objetivo: Alterar o destino de uma rota após mudança do trajeto.
-- -----------------------------------------------------
UPDATE ROTA
SET destino = 'Estação Central'
WHERE id_rota = 5;


-- -----------------------------------------------------
-- UPDATE 5:
-- Objetivo: Ajustar horário de chegada devido a atraso.
-- -----------------------------------------------------
UPDATE VIAGEM
SET horario_chegada = '11:05:00'
WHERE id_viagem = 4;



-- =====================================================
-- 2. DELETE – Remoção de Registros
-- =====================================================

-- -----------------------------------------------------
-- DELETE 1:
-- Objetivo: Excluir uma viagem cancelada.
-- -----------------------------------------------------
DELETE FROM VIAGEM
WHERE id_viagem = 10;


-- -----------------------------------------------------
-- DELETE 2:
-- Objetivo: Remover um ônibus fora de operação.
-- (OBS: só funciona se não houver viagens vinculadas)
-- -----------------------------------------------------
DELETE FROM ONIBUS
WHERE id_onibus = 5;


-- -----------------------------------------------------
-- DELETE 3:
-- Objetivo: Excluir um motorista desligado da empresa.
-- -----------------------------------------------------
DELETE FROM MOTORISTA
WHERE id_motorista = 4;


-- -----------------------------------------------------
-- DELETE 4:
-- Objetivo: Remover uma rota desativada pela prefeitura.
-- -----------------------------------------------------
DELETE FROM ROTA
WHERE id_rota = 4;


-- -----------------------------------------------------
-- DELETE 5:
-- Objetivo: Excluir viagens antigas (antes de 2024).
-- -----------------------------------------------------
DELETE FROM VIAGEM
WHERE data_viagem < '2024-01-01';
