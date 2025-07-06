# TickTick MCP - Docker Container
FROM node:20-alpine

# Install system dependencies
RUN apk add --no-cache \
    curl \
    bash \
    python3 \
    py3-pip \
    && rm -rf /var/cache/apk/*

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install Node.js dependencies
RUN npm install --production

# Copy source code
COPY src/ ./src/

# Create data directory
RUN mkdir -p /app/data

# Set permissions
RUN chmod +x /app/src/index.js

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:8007/health || exit 1

# Expose port
EXPOSE 8007

# Start the server
CMD ["npm", "start"]