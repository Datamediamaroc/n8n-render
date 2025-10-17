# Use official n8n Docker image
FROM n8nio/n8n:latest

# Install FFmpeg (for video editing)
USER root
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Set timezone (optional)
ENV GENERIC_TIMEZONE=Europe/London

# Run n8n
USER node
CMD ["n8n", "start"]
