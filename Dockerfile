FROM node:18-slim

# Instalar dependências básicas
RUN apt-get update && \
    apt-get install -y ffmpeg python3-pip curl gnupg && \
    pip install yt-dlp

# Adicionar repositório do n8n
ENV N8N_VERSION=1.45.1
RUN npm install -g n8n@$N8N_VERSION

# Definir porta padrão
EXPOSE 5678

# Definir comando de arranque
CMD ["n8n"]
