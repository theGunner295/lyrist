FROM  node:23.1.0-alpine3.20
LABEL maintainer="Redshift Enterprises"
LABEL version="1.0"
LABEL description="Lyrics Fetching API"

WORKDIR /app

RUN npm install next@latest react@latest react-dom@latest



COPY package*.json ./

RUN next build

COPY . .

EXPOSE 3000

CMD next start
