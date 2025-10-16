FROM node:20-alpine

RUN npm install -g n8n

WORKDIR /home/node/.n8n
EXPOSE 5678

ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV GENERIC_TIMEZONE=Asia/Karachi
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV DB_TYPE=sqlite

CMD ["sh", "-c", "n8n start"]
