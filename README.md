#  Projeto de Modelagem de Banco de Dados: Pizzaria "Sabor em Fatias"

Este repositório contém o projeto SQL completo desenvolvido para a disciplina de Modelagem de Banco de Dados (ADS - Cruzeiro do Sul Virtual). O objetivo foi modelar, implementar e manipular um banco de dados relacional funcional (em 3ª Forma Normal - 3FN) para gerenciar o sistema de pedidos de uma pizzaria fictícia.

O projeto foi dividido em quatro etapas principais:
* **Modelo Conceitual:** Definição do minimundo e dos conceitos de dados.
* **Modelo Entidade-Relacionamento (DER):** Criação do diagrama DER, identificando entidades, atributos e cardinalidades.
* **Modelo Lógico:** Conversão do DER em um esquema de tabelas normalizado (3FN).
* **Implementação (SQL):** Criação dos scripts SQL (DDL e DML) para construir e testar o banco de dados.

## 1. Documentação do Projeto (Atividades 1, 2 e 3)

Todo o processo de concepção do projeto, desde a análise de requisitos (Minimundo) até o Modelo Conceitual (DER) e o Modelo Lógico (3FN), está documentado nos PDFs desta pasta, conforme a metodologia da disciplina.

* 📄 **[Atividade 1: Projeto Conceitual (Minimundo)](./documentacao/Atividade_1_Minimundo.pdf)**
* 📄 **[Atividade 2: Modelo Conceitual (DER)](./documentacao/Atividade_2_Modelo_Conceitual_DER.pdf)**
* 📄 **[Atividade 3: Projeto Lógico (Formas Normais)](./documentacao/Atividade_3_Modelo_Logico_3FN.pdf)**

## 2. Estrutura do Banco de Dados

O modelo lógico final consiste em 4 tabelas principais, todas normalizadas até a 3FN:

* **`CLIENTE`**: Armazena os dados cadastrais dos clientes (Nome, Telefone, Endereço).
* **`PRODUTO`**: Funciona como o cardápio, armazenando os itens vendáveis (Pizzas, Bebidas, etc.) com seus respectivos preços.
* **`PEDIDO`**: Registra a transação de venda, ligando um cliente a um status, data e valor total.
* **`ITEM_PEDIDO`**: Tabela associativa que resolve o relacionamento N:M (muitos-para-muitos) entre `PEDIDO` e `PRODUTO`. É nela que a quantidade e o preço unitário de cada item do pedido são armazenados.

## 3. Conteúdo do Repositório

Este repositório contém os scripts SQL e a documentação completa do projeto:

* **`/documentacao`**: Pasta contendo os PDFs das Atividades 1, 2 e 3 (o processo de concepção).
* **`README.md`**: Este arquivo, com a documentação do projeto.
* **`schema.sql`**: (DDL - Data Definition Language) Script que **cria** a estrutura do banco (`CREATE DATABASE`, `CREATE TABLE`) e define todas as chaves primárias (PK) e estrangeiras (FK).
* **`insert.sql`**: (DML - Data Manipulation Language) Script que **popula** o banco de dados, inserindo os dados de exemplo (clientes, produtos e pedidos).
* **`consultas.sql`**: (DQL - Data Query Language) Contém 5 consultas `SELECT` complexas para análise de dados, utilizando `JOIN`, `GROUP BY`, `ORDER BY` e `AVG()`.
* **`manipulacao.sql`**: (DML) Contém os comandos `UPDATE` e `DELETE` para demonstrar a manipulação e a integridade dos dados (como `ON DELETE CASCADE`).

## 4. Como Executar

O projeto foi desenvolvido e testado utilizando **MySQL Workbench**.

É crucial que os scripts sejam executados na ordem correta para que as Chaves Estrangeiras (FKs) funcionem.

1.  Execute o **`schema.sql`** primeiro. Isso irá criar o banco `pizzaria_db` e todas as tabelas vazias.
2.  Execute o **`insert.sql`** em seguida. Isso irá popular as tabelas com os dados de exemplo.
3.  Execute o **`consultas.sql`** para testar as consultas de leitura e ver os resultados.
4.  Execute o **`manipulacao.sql`** por último, para testar as regras de atualização e exclusão.

## 5. Prova de Execução (MySQL Workbench)

Esta seção contém os prints que comprovam a criação e execução bem-sucedida de todos os scripts no MySQL Workbench.

---

### 5.1. Criação e Inserção (Action Output)

O print abaixo mostra o log de execução (`Action Output`) dos scripts `schema.sql` e `insert.sql`, indicando que o banco e as tabelas foram criados (Linhas 1-7) e os dados foram inseridos (Linhas 8-17) com sucesso.

<img width="1100" height="800" alt="imagem log de execução" src="https://github.com/user-attachments/assets/a6fd6703-c824-4f6e-94e6-e80ddd799fec" />

---

### 5.2. Resultados das Consultas (Result Grid)

Os prints a seguir mostram os resultados (`Result Grid`) das consultas de análise de dados (script `consultas.sql`).

**Resultado da Consulta 3 (Detalhes do Pedido 102 com `JOIN`):**
*(Este print mostra a junção das 4 tabelas para exibir um pedido específico)*

<img width="1100" height="389" alt="Imagem Consulta 3" src="https://github.com/user-attachments/assets/71e72f73-e989-4b5d-8635-00320959d73b" />

**Resultado da Consulta 4 (Ranking de Clientes com `COUNT` e `GROUP BY`):**
*(Este print mostra o agrupamento de pedidos por cliente)*

<img width="1100" height="389" alt="Imagem Consulta 4" src="https://github.com/user-attachments/assets/e46da049-5bb8-422c-bddd-4d440fb9a58f" />

**Resultado da Consulta 5 (Ranking de Produtos Vendidos com `SUM`):**
*(Este print mostra o ranking de produtos mais vendidos)*

<img width="1100" height="389" alt="Imagem Consulta5" src="https://github.com/user-attachments/assets/5ba61338-d44e-41b7-b909-81bdcb272cea" />

---

### 5.3. Execução da Manipulação (Action Output)

Este print mostra o log de execução do script `manipulacao.sql`, comprovando que os comandos `UPDATE` e `DELETE` foram executados com sucesso (Linhas 24-32), respeitando as chaves primárias e a integridade referencial.

<img width="1100" height="389" alt="Imagem Log execução" src="https://github.com/user-attachments/assets/ef300f8a-c49d-4657-bbd4-4c5e2b5828d9" />

---

Feito com ☕ por **Fabio Santos**.

