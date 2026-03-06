# Instruções para Agente: Laboratório Semana 1 - Jala University

## Contexto da Atividade
O objetivo é a instalação e configuração de gerenciadores de banco de dados relacionais (**SQL Server Express** e **MySQL**) em ambiente **Linux**. Como o sistema operacional principal é Linux, a utilização de **Docker** é o método recomendado para a preparação do ambiente.

---

## Estrutura do Projeto
- `.env`: Variáveis de ambiente com senhas dos bancos.
- `docker-compose.yml`: Configuração dos serviços MySQL e SQL Server.
- `escola_jala_ddl.sql`: Script de criação das tabelas (Manual).
- `escola_jala_data.sql`: Script de inserção de dados e exemplos de transação.

## Como Iniciar
1. `docker-compose up -d`
2. Os bancos estarão acessíveis nas portas 3306 (MySQL) e 1433 (SQL Server).
