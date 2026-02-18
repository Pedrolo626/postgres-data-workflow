 📊 PostgreSQL Data Workflow

Este repositório contém um projeto de modelagem e manipulação de dados utilizando **PostgreSQL**, com foco em:

- consultas com **JOINs**
- controle de sequências (sequences)
- uso de dados reais
- automação via **shell script**

---

## 🧠 Descrição

O objetivo deste projeto é demonstrar um fluxo completo de trabalho com **PostgreSQL**, incluindo:

- criação de tabelas
- importação de dados
- execução de queries e análises
- controle de sequences para auto-incremento
- scripts automatizados para inserção e consulta de dados

Este projeto é ideal para aprender e praticar tópicos comuns em bancos de dados relacionais e SQL.

---

## 🗂 Estrutura do Repositório

.
├── games.csv # Dados de jogos para importação
├── insert_data.sh # Script para inserir dados no banco
├── queries.sh # Script com consultas SQL executáveis
├── worldcup.sql.sql # Esquema de criação de tabelas e constraints
└── README.md # Documentação do projeto


---

## 🔧 Tecnologias

O projeto foi desenvolvido utilizando:

- 🐘 **PostgreSQL** — sistema de banco de dados relacional
- 🐚 **Shell Script (Bash)** — automação de inserção e queries
- 📄 **CSV** — formato de dados para bulk import

Atualmente a linguagem principal utilizada é **Shell Script** com integração ao PostgreSQL para manipular dados de forma programática.

---

## 🚀 Como usar

### 1️⃣ Clone o repositório

```bash
git clone https://github.com/Pedrolo626/postgres-data-workflow.git
cd postgres-data-workflow

2️⃣ Crie o banco de dados
Caso ainda não tenha criado:

createdb postgres_workflow
3️⃣ Importe o esquema
Rode o script de criação de tabela:

psql -d postgres_workflow -f worldcup.sql.sql
4️⃣ Insira os dados

Execute o script para popular o banco:

./insert_data.sh
5️⃣ Realize consultas

