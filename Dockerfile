FROM node:22-alpine

WORKDIR /app

RUN apk add --no-cache wget

COPY index.html .

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:9999 || exit 1

CMD ["npx", "http-server", "-p", "3000"]