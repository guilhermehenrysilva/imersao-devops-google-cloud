# Imagem Python clean
FROM python:3.13.4-alpine3.22

# Define o diretorio de trabalho dentro do conteiner
WORKDIR /app

# Copia o arquivo de requisitos e instala as bibliotecas
COPY requirements.txt .

# Usamos --no-cache-dir para evitar o cache do pip, reduzindo o tamanho da imagem
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do codigo da aplicacao para o diretorio de trabalho
COPY . .

# Expoe a porta que a aplicacao FastAPI irá rodar (padrão é 8080)
EXPOSE 8000

# Comando para rodar a aplicacao usando uvicorn
# O host 0.0.0.0 permite que a aplicacao seja acessivel externamente ao conteiner
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]