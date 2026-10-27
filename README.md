# Estudos PostgreSQL

Projeto de estudos para aprender SQL e PostgreSQL utilizando Docker, VS Code e Git/GitHub para versionamento da estrutura do banco de dados.

## Tecnologias utilizadas

- **PostgreSQL 18:** banco de dados relacional.
- **Docker Desktop:** execução do banco em container.
- **Docker Compose:** gerenciamento da configuração do ambiente.
- **Visual Studio Code:** editor de código.
- **Git e GitHub:** versionamento e compartilhamento do projeto.

## Estrutura do projeto

```text
pedromailsql/
├── db/
│   └── migrations/
│       └── teste.sql
├── .env.example
├── .gitignore
├── compose.yaml
└── README.md
```

## Pré-requisitos

Antes de começar, instale:

- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Git](https://git-scm.com/)

Verifique as instalações pelo terminal:

```bash
docker --version
docker compose version
git --version
```

## Configuração do ambiente

### 1. Clone o repositório

```bash
git clone https://github.com/SEU-USUARIO/mail-postgres.git
cd estudos-postgres
```

### 2. Configure as variáveis de ambiente

Copie o arquivo de exemplo:

```bash
cp .env.example .env
```

O arquivo `.env` contém as configurações locais do banco, como usuário, senha e nome do banco de dados.

Exemplo de `.env.example`:

```dotenv
POSTGRES_USER=mail
POSTGRES_PASSWORD=troque_esta_senha
POSTGRES_DB=mail_db
```

Edite o arquivo `.env` com as configurações desejadas para seu ambiente local.

**Importante:** não envie o arquivo `.env` para o GitHub. Ele contém credenciais e deve permanecer local.

### 3. Inicie o PostgreSQL

Com o Docker Desktop em execução, execute:

```bash
docker compose up -d
```

Verifique o estado do container:

```bash
docker compose ps
```

Consulte os logs:

```bash
docker compose logs -f db
```

O PostgreSQL estará disponível na porta `5432` do Mac.

## Acessando o banco de dados

Para abrir o terminal interativo do PostgreSQL:

```bash
docker compose exec db psql -U admin -d mail_db
```

Para listar as tabelas:

```sql
\dt
```

Para sair do terminal:

```sql
\q
```

## Executando scripts SQL

Os scripts SQL ficam organizados no diretório `db/migrations/`.

Para executar a migration de criação da tabela de clientes:

```bash
docker compose exec -T db psql -U admin -d mail_db < db/migrations/001_create_clientes.sql
```

Para consultar os registros cadastrados:

```sql
SELECT * FROM
```

## Possivel erro da versão 18

- [Fix](ttps://github.com/docker-library/postgres/pull/1259)
