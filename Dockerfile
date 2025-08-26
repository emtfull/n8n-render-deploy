FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/n8n

# Create n8n user for security
RUN addgroup -g 1000 n8n && \
    adduser -u 1000 -G n8n -s /bin/sh -D n8n

# Change ownership
RUN chown -R n8n:n8n /home/n8n

# Switch to n8n user
USER n8n

# Expose port
EXPOSE 5678

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s \
  CMD wget --quiet --tries=1 --spider http://localhost:5678/healthz || exit 1

# Start n8n
CMD ["n8n", "start"]
