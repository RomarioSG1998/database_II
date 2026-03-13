# Database II - Jala University

Este repositório contém as atividades da disciplina de Banco de Dados II.

## 🚀 Estrutura do Projeto

O projeto está dividido por semanas e atividades:

- **semana_2/**
  - **atividade_1/**: Scripts SQL para criação de schema, views, stored procedures e triggers.
  - **atividade_2/**: Implementação de acesso a dados usando JDBC e ORM (Hibernate).

## 🛠️ Requisitos

- Java 21+
- Maven
- Docker e Docker Compose

## 🐳 Ambiente de Banco de Dados

Para subir os bancos de dados (MySQL e SQL Server), execute o comando na raiz do projeto:

```bash
docker compose up -d
```

O MySQL será inicializado na porta `3306` e o SQL Server na porta `1433`.

## 🏃 Como Executar

### Atividade 2 (JDBC & ORM)

Navegue até a pasta da atividade:
```bash
cd semana_2/atividade_2
```

1. **Resolver dependências:**
   ```bash
   mvn clean install
   ```

2. **Executar JDBC Manager:**
   ```bash
   mvn exec:java -Dexec.mainClass="com.jala.database.JdbcManager"
   ```

3. **Executar ORM Manager (Hibernate):**
   ```bash
   mvn exec:java -Dexec.mainClass="com.jala.database.OrmManager"
   ```

---
*Desenvolvido por Romário Jala*
