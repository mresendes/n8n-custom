FROM node:18-slim

# Instalar dependências básicas
RUN apt-get update && \
    apt-get install -y ffmpeg python3-pip curl gnupg && \
    pip install --break-system-packages yt-dlp

# Instalar versão 2.0.0 do n8n
ENV N8N_VERSION=2.0.0
RUN npm install -g n8n@$N8N_VERSION

# Expor porta e iniciar n8n
EXPOSE 5678
CMD ["n8n"]
