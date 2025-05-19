FROM node:16-alpine

RUN adduser -D appuser

WORKDIR /app

COPY . .

RUN npm install && \
    npm prune --production && \
    chown -R appuser /app

USER appuser

CMD ["node", "index.js"]
