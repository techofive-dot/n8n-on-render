# Use official Node image
FROM node:18-alpine

# Install n8n globally
RUN npm install -g n8n

# Create app directory
WORKDIR /home/node

# Create n8n data directory
RUN mkdir -p /home/node/.n8n

# Set proper permissions
RUN chmod 755 /home/node/.n8n

# Expose n8n port
EXPOSE 5678

# Environment variables
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Start n8n
CMD ["n8n", "start"]
