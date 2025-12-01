🚍 **STUR — Sistema de Transporte Urbano Rápido** 

Experiência Prática IV — Modelagem e Manipulação de Dados (ADS)
Este repositório contém o projeto SQL completo desenvolvido para a disciplina de Modelagem de Banco de Dados (ADS - Cruzeiro do Sul Virtual). O objetivo foi modelar, implementar e manipular um banco de dados relacional funcional (em 3ª Forma Normal - 3FN).

O projeto foi dividido em quatro etapas principais:

- **Modelo Conceitual:** Definição do minimundo e dos conceitos de dados.
- **Modelo Entidade-Relacionamento (DER):** Criação do diagrama DER, identificando entidades, atributos e cardinalidades.
- **Modelo Lógico:** Conversão do DER em um esquema de tabelas normalizado (3FN).
- **Implementação (SQL):** Criação dos scripts SQL (DDL e DML) para construir e testar o banco de dados.

---

📌 **Objetivo**

Implementar a criação e manipulação de dados em um **banco de dados relacional MySQL**, aplicando:

- **DML** (INSERT, SELECT, UPDATE, DELETE)  
- **Integridade referencial com chaves estrangeiras**  
- **Modelagem em 3FN (Terceira Forma Normal)**  
- **Testes e execução no MySQL Workbench**  
- **Versionamento e organização no GitHub**

---

🗂 **Estrutura do Repositório**

📦 **stur-sql**  
 ┣ 📄 **01-schema.sql** → Criação do banco e tabelas (DDL)  
 ┣ 📄 **02-inserts.sql** → Povoamento inicial das tabelas  
 ┣ 📄 **03-selects.sql** → Consultas analíticas e operacionais  
 ┣ 📄 **04-updates-deletes.sql** → Manipulação dos dados (UPDATE/DELETE)  
 ┗ 📄 **README.md** → Documentação geral do projeto  

---

🛠 **Tecnologias Utilizadas**

- **MySQL Server 8.0**  
- **MySQL Workbench 8**  
- **SQL (DDL, DML e DQL)**  
- Princípios de **modelagem e normalização**  

---

📥 **Execução**

1. Abra o **MySQL Workbench**  
2. Conecte ao servidor local  
3. Execute:

```sql
USE stur_db;

Rode os scripts nesta ordem:

1️⃣ 01-schema.sql
2️⃣ 02-inserts.sql
3️⃣ 03-selects.sql
4️⃣ 04-updates-deletes.sql



Projeto acadêmico — Universidade Cruzeiro do Sul
Curso: Análise e Desenvolvimento de Sistemas (ADS)




Made by⚡Paulo Ferreira




