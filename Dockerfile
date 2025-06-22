# Use lightweight Nginx base image
FROM nginx:alpine

# Clean default web content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website into the container
COPY site/ /usr/share/nginx/html/

# Expose port 80 in the container
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]