# Use a minimal NGINX image
FROM nginx:alpine

# Remove default content
RUN rm -rf /usr/share/nginx/html/*

# Copy generated Hugo site into NGINX web root
COPY public/ /usr/share/nginx/html/

# Expose HTTP port
EXPOSE 80

# Start NGINX in foreground
CMD ["nginx", "-g", "daemon off;"]
