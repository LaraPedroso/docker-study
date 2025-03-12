# 📌 Documentação: Como Rodar a Aplicação em Outra Máquina

Este documento explica como configurar e executar a aplicação em outra máquina usando Docker e PostgreSQL.

## 🛠️ Requisitos

- Docker instalado ([Download Docker](https://www.docker.com/get-started))
- Docker Compose instalado
- Git instalado (opcional, para clonar o repositório)

## 🚀 Passos para Rodar a Aplicação

### 1️⃣ Clonar o Repositório

Se o projeto estiver em um repositório Git, clone-o na nova máquina:

```sh
git clone <seu-repositorio.git>
cd <nome-do-projeto>
```

Caso contrário, copie os arquivos do projeto para a nova máquina manualmente.

### 2️⃣ Executar o Docker Compose

No terminal, dentro da pasta do projeto, execute:

```sh
docker compose up -d
```

Isso criará e iniciará os containers da API e do PostgreSQL.

### 3️⃣ Verificar se os Containers Estão Rodando

Execute o seguinte comando:

```sh
docker ps
```

Se os containers `api` e `postgres` estiverem listados, significa que estão rodando corretamente.

### 4️⃣ Acessar a API

No navegador ou terminal, teste se a API está rodando:

```sh
curl http://localhost:3333
```

### 5️⃣ Conectar ao Banco de Dados PostgreSQL

Se precisar acessar o banco PostgreSQL via terminal:

```sh
docker exec -it postgres psql -U postgres -d api
```

#### 🔎 Listar Bancos de Dados

```sh
\l
```

#### 🔎 Mudar para Outro Banco

```sh
\c api
```

#### 🔎 Listar as Tabelas do Banco

```sh
\dt
```

#### 🔎 Ver a Estrutura de uma Tabela

```sh
\d nome_da_tabela
```

#### 🚪 Sair do PostgreSQL

```sh
\q
```

### 6️⃣ Parar e Reiniciar a Aplicação

Para parar os containers:

```sh
docker compose down
```

Para reiniciá-los:

```sh
docker compose up -d
```

## ✅ Conclusão

Agora sua aplicação está rodando na nova máquina! Se houver algum erro, verifique os logs:

```sh
docker logs api
docker logs postgres
```

Se precisar de mais ajustes, edite o `docker-compose.yml` conforme necessário. 🚀

