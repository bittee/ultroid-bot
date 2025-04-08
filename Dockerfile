FROM python:3.9-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && \
    apt-get install -y \
    wget \
    git \
    python3-pip \
    redis-server \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Set TERM environment variable
ENV TERM=xterm
ENV PYTHONWARNINGS="ignore:Unverified HTTPS request"

# Clone the repository
RUN git clone https://github.com/TeamUltroid/Ultroid.git

# Copy configuration files
COPY .env Ultroid/
COPY session.txt Ultroid/

# Install Python dependencies
RUN cd Ultroid && \
    pip3 install -r requirements.txt && \
    pip3 install --no-cache-dir pillow telethon redis python-decouple python-dotenv telegraph enhancer requests aiohttp catbox-uploader cloudscraper pymongo motor gitpython

# Create startup script
RUN echo '#!/bin/bash\n\
service redis-server start\n\
cd /app/Ultroid\n\
python3 -m pyUltroid' > /app/start.sh && \
chmod +x /app/start.sh

# Use startup script
CMD ["/app/start.sh"] 