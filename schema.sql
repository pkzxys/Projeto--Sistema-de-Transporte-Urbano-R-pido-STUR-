-- -----------------------------------------------------
-- SCRIPT DE CRIAÇÃO (DDL)
-- Sistema: STUR – Sistema de Transporte Urbano Rápido
-- -----------------------------------------------------

-- Criar Banco de Dados
CREATE DATABASE IF NOT EXISTS stur_db;
USE stur_db;

-- =====================================================
-- 1. Tabela: MOTORISTA
-- =====================================================
CREATE TABLE MOTORISTA (
    id_motorista INT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cpf VARCHAR(20) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    categoria_cnh CHAR(1) NOT NULL
);

-- =====================================================
-- 2. Tabela: ONIBUS
-- =====================================================
CREATE TABLE ONIBUS (
    id_onibus INT PRIMARY KEY,
    numero_frota VARCHAR(20) UNIQUE NOT NULL,
    placa VARCHAR(10) UNIQUE NOT NULL,
    capacidade INT NOT NULL
);

-- =====================================================
-- 3. Tabela: ROTA
-- =====================================================
CREATE TABLE ROTA (
    id_rota INT PRIMARY KEY,
    nome_rota VARCHAR(120) NOT NULL,
    origem VARCHAR(120) NOT NULL,
    destino VARCHAR(120) NOT NULL
);

-- =====================================================
-- 4. Tabela: VIAGEM
-- =====================================================
CREATE TABLE VIAGEM (
    id_viagem INT PRIMARY KEY,
    data_viagem DATE NOT NULL,
    horario_partida TIME NOT NULL,
    horario_chegada TIME NOT NULL,

    id_onibus INT NOT NULL,
    id_motorista INT NOT NULL,
    id_rota INT NOT NULL,

    CONSTRAINT fk_viagem_onibus
        FOREIGN KEY (id_onibus) REFERENCES ONIBUS(id_onibus)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    CONSTRAINT fk_viagem_motorista
        FOREIGN KEY (id_motorista) REFERENCES MOTORISTA(id_motorista)
        ON UPDATE CASCADE ON DELETE RESTRICT,

    CONSTRAINT fk_viagem_rota
        FOREIGN KEY (id_rota) REFERENCES ROTA(id_rota)
        ON UPDATE CASCADE ON DELETE RESTRICT
);
