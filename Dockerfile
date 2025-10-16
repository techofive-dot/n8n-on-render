# Use official Node.js image
FROM node:18

# Install n8n globally
RUN npm install -g n8n

# Create working directory
WORKDIR /data

# Expose n8n default port
EXPOSE 5678

# Set required environment variables
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV GENERIC_TIMEZONE=Asia/Karachi

# Start n8n when container runs
ENTRYPOINT ["n8n"]
CMD ["start"]
