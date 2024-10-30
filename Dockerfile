FROM  node:23.1.0-alpine3.20
LABEL maintainer="Redshift Enterprises"
LABEL version="1.0"
LABEL description="Lyrics Fetching API"

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD npm run dev