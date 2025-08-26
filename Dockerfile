FROM n8nio/n8n:latest

# Use the docker entrypoint that exists in the image
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["n8n"]
