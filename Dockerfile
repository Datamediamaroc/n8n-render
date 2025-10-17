# Use official prebuilt n8n image (Alpine-based)
FROM n8nio/n8n:latest

# Switch to root to install FFmpeg
USER root

# Install FFmpeg via Alpine package manager
RUN apk add --no-cache ffmpeg

# Switch back to n8n user
USER node

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start", "--tunnel"]
