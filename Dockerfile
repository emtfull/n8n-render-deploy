FROM n8nio/n8n:latest

# The n8n image already has a user setup, so we don't need to create one
# Just set the working directory and expose the port

WORKDIR /home/node

# Expose port
EXPOSE 5678

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s \
  CMD wget --quiet --tries=1 --spider http://localhost:5678/healthz || exit 1

# Start n8n (the base image already sets the correct user)
CMD ["n8n", "start"]
