# Imersão DevOps - Alura Google Cloud

Este projeto é uma API desenvolvida com FastAPI para gerenciar alunos, cursos e matrículas em uma instituição de ensino.

## Pré-requisitos

- [Python 3.10 ou superior instalado](https://www.python.org/downloads/)
- [Git](https://git-scm.com/downloads)
- [Docker](https://www.docker.com/get-started/)

---

**Aula 01: Crie ambientes reais com Docker e dê fim ao "na minha máquina funciona"**
https://www.youtube.com/watch?v=0489E0G7JVM&t=2973s&ab_channel=Alura

## Passos para subir o projeto

2. **Crie um ambiente virtual:**
   ```sh
   python3 -m venv ./venv
   ```

3. **Ative o ambiente virtual:**
   - No Linux/Mac:
     ```sh
     source venv/bin/activate
     ```
   - No Windows:
     ```sh
     venv\Scripts\activate
     ```
     OBS: Se erro -> PowerShell (Adm) -> cmd: Set-ExecutionPolicy RemoteSigned

4. **Instale as dependências:**
   ```sh
   pip install -r requirements.txt
   ```

5. **Execute a aplicação:**
   ```sh
   uvicorn app:app --reload
   ```

6. **Acesse a documentação interativa:**
   Abra o navegador e acesse:  
   [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

   Aqui você pode testar todos os endpoints da API de forma interativa.

## Passos para subir a aplicação empacotada (Docker)

1. **Construa a imagem Docker**
   ```sh
   docker build -t imersao-devops-api .
   ```

2. **Rode a imagem Docker**
```sh
docker run -p 8000:8000 imersao-devops-api
```

---

**Aula 02: Aprenda CI/CD na prática: automatize do build ao deploy**
https://www.youtube.com/watch?v=ySMFDAvtSaE&t=1454s&ab_channel=Alura

## Passos para subir a aplicação pelo Docker compose
```sh
docker compose up -d
```

---

**Aula 03: Fazendo deploy na Google Cloud Platform**
https://www.youtube.com/watch?v=iWaYjIcTe9I&t=1981s&ab_channel=Alura

## Google Cloud:
https://console.cloud.google.com/welcome?inv=1&invt=Ab14Tw&project=ornate-flame-464819-g5

## Google CLI (gcloud)
https://cloud.google.com/sdk/docs/install#windows

## Autenticando no Google Cloud
```sh
gcloud auth login
gcloud config set project PROJECT_ID
gcloud run deploy --port=8000
```

## Console Google
*Artifact Registry* - Imagens Docker salvas no Google Cloud (Semelhante ao DockerHub images)
*Cloud Run* - Serviços em execução (Imagens rodando no Google Cloud)

---

## Estrutura do Projeto

- `app.py`: Arquivo principal da aplicação FastAPI.
- `models.py`: Modelos do banco de dados (SQLAlchemy).
- `schemas.py`: Schemas de validação (Pydantic).
- `database.py`: Configuração do banco de dados SQLite.
- `routers/`: Diretório com os arquivos de rotas (alunos, cursos, matrículas).
- `requirements.txt`: Lista de dependências do projeto.

---

- O banco de dados SQLite será criado automaticamente como `escola.db` na primeira execução.
- Para reiniciar o banco, basta apagar o arquivo `escola.db` (isso apagará todos os dados).

---
