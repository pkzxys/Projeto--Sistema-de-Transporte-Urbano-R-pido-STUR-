-- -----------------------------------------------------
-- Script de Manipulação (UPDATE / DELETE)
-- Sistema: STUR – Sistema de Transporte Urbano Rápido
-- -----------------------------------------------------

USE stur_db;

-- =====================================================
-- 1. UPDATE – Atualização de Dados
-- =====================================================

-- -----------------------------------------------------
-- UPDATE 1:
-- Objetivo: Atualizar o telefone de um motorista.
-- -----------------------------------------------------
UPDATE MOTORISTA
SET telefone = '(11) 97777-1234'
WHERE id_motorista = 3;


-- -----------------------------------------------------
-- UPDATE 2:
-- Objetivo: Trocar o motorista responsável por uma viagem.
-- Cenário: O motorista faltou e precisa ser substituído.
-- -----------------------------------------------------
UPDATE VIAGEM
SET id_motorista = 4
WHERE id_viagem = 7;


-- -----------------------------------------------------
-- UPDATE 3:
-- Objetivo: Atualizar a capacidade de um ônibus.
-- (Ex.: ônibus passou por reforma e agora comporta mais passageiros)
-- -----------------------------------------------------
UPDATE ONIBUS
SET capacidade = 52
WHERE id_onibus = 2;


-- -----------------------------------------------------
-- UPDATE 4:
-- Objetivo: Alterar o destino de uma rota.
-- (Ex.: prefeitura mudou o percurso da linha)
-- -----------------------------------------------------
UPDATE ROTA
SET destino = 'Bairro Nova Esperança'
WHERE id_rota = 1;


-- -----------------------------------------------------
-- UPDATE 5:
-- Objetivo: Ajustar o horário de chegada de uma viagem atrasada.
-- -----------------------------------------------------
UPDATE VIAGEM
SET horario_chegada = '07:10:00'
WHERE id_viagem = 2;



-- =====================================================
-- 2. DELETE – Exclusão de Dados
-- =====================================================

-- -----------------------------------------------------
-- DELETE 1:
-- Objetivo: Remover um motorista que não trabalha mais na empresa.
-- (OBS: somente se ele não estiver vinculado a viagens recentes)
-- -----------------------------------------------------
DELETE FROM MOTORISTA
WHERE id_motorista = 5;


-- -----------------------------------------------------
-- DELETE 2:
-- Objetivo: Apagar uma viagem cancelada.
-- -----------------------------------------------------
DELETE FROM VIAGEM
WHERE id_viagem = 10;


-- -----------------------------------------------------
-- DELETE 3:
-- Objetivo: Remover um ônibus que foi aposentado.
-- -----------------------------------------------------
DELETE FROM ONIBUS
WHERE id_onibus = 5;


-- -----------------------------------------------------
-- DELETE 4:
-- Objetivo: Excluir uma rota descontinuada pela prefeitura.
-- -----------------------------------------------------
DELETE FROM ROTA
WHERE id_rota = 4;


-- -----------------------------------------------------
-- DELETE 5:
-- Objetivo: Limpar viagens antigas (ex.: antes de 2024).
-- -----------------------------------------------------
DELETE FROM VIAGEM
WHERE data_viagem < '2024-01-01';
