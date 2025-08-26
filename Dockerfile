FROM n8nio/n8n:latest

# Debug what's in the container
RUN which n8n || echo "n8n not found"
RUN ls -la /usr/local/bin/ || echo "bin directory not found"
RUN ls -la / || echo "root directory listing failed"

# Try running n8n directly
CMD ["sh", "-c", "echo 'Starting n8n...' && exec n8n"]
