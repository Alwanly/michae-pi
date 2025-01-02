FROM nginx:latest

# Copy the configuration file into the container
COPY config/nginx.conf /etc/nginx/nginx.conf

# Copy the index.html file into the container
COPY config/index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
