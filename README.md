Projeto de Modelagem de Banco de Dados: STUR – Sistema de Transporte Urbano Rápido

Este repositório contém o projeto SQL completo desenvolvido para a disciplina de Modelagem de Banco de Dados (ADS – Cruzeiro do Sul Virtual).
O objetivo foi modelar, estruturar e implementar um banco de dados relacional funcional (em 3ª Forma Normal – 3FN) para gerenciar rotas, ônibus, motoristas e viagens do sistema de transporte público STUR.

O projeto foi dividido em quatro etapas principais:

Modelo Conceitual: Definição do minimundo e identificação das entidades iniciais.

Modelo Entidade-Relacionamento (DER): Criação do diagrama conceitual com entidades, atributos e cardinalidades.

Modelo Lógico: Conversão do DER em esquema de tabelas normalizadas (1FN, 2FN e 3FN).

Implementação (SQL): Construção do banco via scripts DDL, DML, consultas e manipulação.

1. Documentação do Projeto (Atividades 1, 2 e 3)

Todo o processo de concepção — desde o minimundo, passando pela definição das entidades, restrições, relacionamentos, até a normalização (1FN, 2FN e 3FN) — está totalmente detalhado nos PDFs desta pasta, conforme metodologia exigida pela disciplina.

Esses documentos incluem:

Minimundo do STUR

Entidades e atributos

Relações entre motoristas, ônibus, rotas e viagens

Diagramas DER

Normalização completa até a 3FN

2. Estrutura do Banco de Dados

O modelo lógico final consiste em 4 tabelas principais, todas normalizadas até a 3FN:

MOTORISTA

Armazena os dados dos motoristas cadastrados (Nome, Telefone, CPF, Categoria CNH).

ONIBUS

Contém os veículos utilizados nas viagens (Frota, Placa, Capacidade).

ROTA

Define os trajetos utilizados pelo sistema, contendo Origem, Destino e Nome da Rota.

VIAGEM

Registra cada viagem realizada, vinculando:

ônibus

motorista

rota

data

horários de partida e chegada

É também a tabela que centraliza os relacionamentos e controla o fluxo operacional do sistema.

3. Conteúdo do Repositório

Este repositório contém todos os scripts SQL e toda a documentação do projeto:

/documentacao
    PDFs das Atividades 1, 2 e 3 (todo o processo conceitual e lógico)

/schema.sql
    Script DDL – Criação do banco STUR e das quatro tabelas principais
    (CREATE DATABASE, CREATE TABLE, PKs e FKs)

/insert.sql
    Script DML – Inserção dos dados de exemplo:
        motoristas, ônibus, rotas e viagens

/consultas.sql
    Script com 10 consultas SELECT elaboradas (JOIN, GROUP BY, ORDER BY,
    COUNT, SUM, AVG e filtros avançados)

/manipulacao.sql
    Script DML com comandos UPDATE e DELETE
    para testar integridade e manipulação dos dados

README.md
    Este arquivo com toda a documentação do projeto

4. Como Executar

O projeto foi desenvolvido e testado utilizando MySQL Workbench.
Para que tudo funcione corretamente, os scripts devem ser executados na ordem a seguir:

1️⃣ Execute o schema.sql

Cria o banco stur_db e todas as tabelas vazias.

2️⃣ Execute o insert.sql

Popula o banco com dados realistas de motoristas, ônibus, rotas e viagens.

3️⃣ Execute o consultas.sql

Testa JOINs, agrupamentos, análises e consultas operacionais.

4️⃣ Execute o manipulacao.sql

Testa atualizações, exclusões e regras de integridade referencial.

5. Prova de Execução (MySQL Workbench)

Esta seção demonstra a execução bem-sucedida de todos os scripts por meio de prints extraídos do Action Output e Result Grid do MySQL Workbench.

5.1. Criação e Inserção (Action Output)

O print deve mostrar:

Banco stur_db criado

Tabelas MOTORISTA, ONIBUS, ROTA e VIAGEM criadas

Dados inseridos com sucesso

(Inserir imagem do seu Action Output aqui)

5.2. Resultados das Consultas (Result Grid)

Exemplos de prints que devem ser inseridos:

✔️ Resultado da Consulta 4 – Detalhes completos de uma viagem (JOIN entre 4 tabelas)

(Imagem mostrando id_viagem, motorista, ônibus e rota)

✔️ Resultado da Consulta 5 – Ranking de rotas mais utilizadas

(Imagem mostrando GROUP BY + ORDER BY)

✔️ Resultado da Consulta 6 – Total de ônibus utilizados por dia

(Imagem mostrando SUM e agrupamento por data)

5.3. Execução da Manipulação (Action Output)

O print deve mostrar:

Registros atualizados (UPDATE)

Registros excluídos (DELETE)

Mensagens de sucesso com integridade referencial preservada

(Inserir imagem do seu Action Output aqui)
