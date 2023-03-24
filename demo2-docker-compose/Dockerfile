# Usa l'immagine Node.js versione 14 come base
FROM node:14

# Crea una directory per l'app
WORKDIR /usr/src/app

# Copia il file package.json e package-lock.json
COPY package*.json ./

# Installa le dipendenze
RUN npm install

# Copia il codice sorgente dell'app
COPY . .

# Espone la porta 3000
EXPOSE 3000

# Avvia l'app
CMD ["npm", "start"]


#docker build -t express-api-docker .
#docker run -p 3000:3000 express-api-docker
