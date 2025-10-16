# Use Node 20 base image
FROM node:20-alpine

# Install n8n globally
RUN npm install -g n8n

# Create working directory
WORKDIR /home/node/.n8n

# Expose the n8n port
EXPOSE 5678

# Environment variables
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV GENERIC_TIMEZONE=Asia/Karachi
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Start command
CMD ["sh", "-c", "n8n start"]
