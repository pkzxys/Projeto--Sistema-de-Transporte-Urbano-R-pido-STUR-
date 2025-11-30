# **STUR – Sistema de Gerenciamento de Transporte Urbano Rápido**

**Desenvolvido por:** Paulo Ferreira  
**Instituição:** Universidade Cruzeiro do Sul  
**Disciplina:** Modelagem de Banco de Dados  
**Experiências Práticas:** EP1, EP2 e EP3  
**Data:** 29/11/2025  

---

## **📘 Descrição do Projeto**

O **STUR (Sistema de Transporte Urbano Rápido)** é um banco de dados completo projetado para gerenciar:

- **Ônibus**
- **Motoristas**
- **Rotas**
- **Viagens**

O sistema foi desenvolvido em **MySQL**, seguindo todas as melhores práticas de:

- **Modelagem Conceitual**
- **Diagrama Entidade-Relacionamento (DER)**
- **Modelo Lógico**
- **Normalização (1FN, 2FN e 3FN)**
- **Implementação (DDL, DML e DQL)**

---

## **🗄️ Estrutura do Banco de Dados**

O banco é composto por **4 tabelas principais**, totalmente normalizadas:

### **1. MOTORISTA**
Armazena informações dos motoristas:  
**nome**, **cpf**, **telefone**, **categoria_cnh**.

### **2. ONIBUS**
Registra dados dos veículos:  
**número da frota**, **placa**, **capacidade**.

### **3. ROTA**
Define os caminhos do sistema:  
**origem**, **destino**, **nome da rota**.

### **4. VIAGEM**
Tabela central do sistema:  
**data**, **horário**, **motorista**, **ônibus**, **rota**.

### **Características Técnicas**
- Todas as tabelas em **3FN**  
- Relacionamentos **1:N** totalmente validados  
- **Constraints de unicidade**: CPF, frota e placa  
- Uso de **chaves primárias inteiras** (surrogate keys)

---

## **📁 Conteúdo do Repositório**

