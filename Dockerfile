FROM n8nio/n8n:latest

# Expose the port for Render
EXPOSE 5678

# Set environment variables that n8n expects
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Use the exact command that n8n expects
CMD ["n8n"]
