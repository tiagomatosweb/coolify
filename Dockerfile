FROM node:22-alpine

WORKDIR /app

COPY index.html .

EXPOSE 3000

CMD ["npx", "http-server", "-p", "3000"]