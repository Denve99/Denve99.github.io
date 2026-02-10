FROM n8nio/n8n:latest
USER root
# Install ffmpeg and python/pip for yt-dlp
RUN apk update && apk add --no-cache ffmpeg python3 py3-pip
# Install yt-dlp
RUN pip3 install --no-cache-dir yt-dlp --break-system-packages
USER node