# Definimos a imagem
FROM node:18-alpine3.20

# Criamos a pasta de trabalho
WORKDIR /usr/src/app

# Copiamos o conteudo pra raiz do nosso projeto /usr/src/app
COPY . . 

# Rodamos o npm install pra gerar a pasta node_modules
RUN npm install 

# Faz a build da aplicação (converte de ts pra js)
RUN npm run build

# Porta 3333 pra que esteja acessivel no nosso container
EXPOSE 3333

# Comando pra executar a aplicação
CMD ["npm", "start"]