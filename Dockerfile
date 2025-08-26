FROM n8nio/n8n:latest

# Don't override anything - just use the base image as-is
# The n8n image is already properly configured

# Only expose the port for Render
EXPOSE 5678
