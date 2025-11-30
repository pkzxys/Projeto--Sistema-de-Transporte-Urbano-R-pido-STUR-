-- -----------------------------------------------------
-- Script de Consultas (SELECT)
-- Sistema de Transporte Urbano Rápido (STUR)
-- -----------------------------------------------------

USE stur_db;

-- -----------------------------------------------------
-- Consulta 1: Simples com WHERE
-- Objetivo: Listar todos os motoristas com CNH categoria D.
-- -----------------------------------------------------
SELECT * 
FROM MOTORISTA
WHERE categoria_cnh = 'D';


-- -----------------------------------------------------
-- Consulta 2: GROUP BY com agregação
-- Objetivo: Ver quantas viagens cada motorista fez.
-- -----------------------------------------------------
SELECT 
    m.nome AS Motorista,
    COUNT(v.id_viagem) AS Total_Viagens
FROM MOTORISTA m
LEFT JOIN VIAGEM v ON v.id_motorista = m.id_motorista
GROUP BY m.nome;


-- -----------------------------------------------------
-- Consulta 3: JOIN simples
-- Objetivo: Exibir os ônibus e as rotas que atenderam.
-- -----------------------------------------------------
SELECT 
    o.numero_frota AS Frota,
    o.placa,
    r.nome_rota AS Rota
FROM ONIBUS o
JOIN VIAGEM v ON o.id_onibus = v.id_onibus
JOIN ROTA r ON v.id_rota = r.id_rota;


-- -----------------------------------------------------
-- Consulta 4: JOIN com filtros (WHERE)
-- Objetivo: Ver os detalhes completos de uma viagem específica.
-- -----------------------------------------------------
SELECT 
    v.id_viagem,
    v.data_viagem,
    v.horario_partida,
    v.horario_chegada,
    r.nome_rota,
    m.nome AS Motorista,
    o.numero_frota AS Onibus
FROM VIAGEM v
JOIN ROTA r ON v.id_rota = r.id_rota
JOIN MOTORISTA m ON v.id_motorista = m.id_motorista
JOIN ONIBUS o ON v.id_onibus = o.id_onibus
WHERE v.id_viagem = 101;  -- exemplo


-- -----------------------------------------------------
-- Consulta 5: Ranking
-- Objetivo: Rotas com mais viagens realizadas (mais utilizadas).
-- -----------------------------------------------------
SELECT 
    r.nome_rota AS Rota,
    COUNT(v.id_viagem) AS Total_Viagens
FROM ROTA r
JOIN VIAGEM v ON v.id_rota = r.id_rota
GROUP BY r.nome_rota
ORDER BY Total_Viagens DESC;


-- -----------------------------------------------------
-- Consulta 6: SUM com GROUP BY
-- Objetivo: Total de ônibus utilizados por dia.
-- -----------------------------------------------------
SELECT 
    v.data_viagem,
    COUNT(DISTINCT v.id_onibus) AS Onibus_Utilizados
FROM VIAGEM v
GROUP BY v.data_viagem
ORDER BY v.data_viagem DESC;


-- -----------------------------------------------------
-- Consulta 7: INNER JOIN com BETWEEN
-- Objetivo: Buscar viagens realizadas entre dois horários.
-- -----------------------------------------------------
SELECT 
    v.id_viagem,
    r.nome_rota,
    o.numero_frota,
    v.horario_partida
FROM VIAGEM v
JOIN ROTA r ON v.id_rota = r.id_rota
JOIN ONIBUS o ON v.id_onibus = o.id_onibus
WHERE v.horario_partida BETWEEN '08:00' AND '12:00';


-- -----------------------------------------------------
-- Consulta 8: LEFT JOIN
-- Objetivo: Ver motoristas que NÃO realizaram viagens.
-- -----------------------------------------------------
SELECT 
    m.nome AS Motorista
FROM MOTORISTA m
LEFT JOIN VIAGEM v ON v.id_motorista = m.id_motorista
WHERE v.id_motorista IS NULL;


-- -----------------------------------------------------
-- Consulta 9: JOIN com ORDER BY
-- Objetivo: Ver todos os ônibus ordenados pelo número de viagens.
-- -----------------------------------------------------
SELECT 
    o.numero_frota,
    COUNT(v.id_viagem) AS Total_Viagens
FROM ONIBUS o
LEFT JOIN VIAGEM v ON v.id_onibus = o.id_onibus
GROUP BY o.numero_frota
ORDER BY Total_Viagens DESC;


-- -----------------------------------------------------
-- Consulta 10: JOIN avançado + filtro
-- Objetivo: Ver viagens que duraram mais de 1 hora.
-- -----------------------------------------------------
SELECT 
    v.id_viagem,
    r.nome_rota,
    v.horario_partida,
    v.horario_chegada,
    TIMEDIFF(v.horario_chegada, v.horario_partida) AS Duracao
FROM VIAGEM v
JOIN ROTA r ON v.id_rota = r.id_rota
WHERE TIMEDIFF(v.horario_chegada, v.horario_partida) > '01:00:00';
