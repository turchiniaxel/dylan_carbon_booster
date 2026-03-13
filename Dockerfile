# Use a lightweight Nginx image based on Alpine Linux
FROM nginx:alpine

# Clean the default Nginx public folder
RUN rm -rf /usr/share/nginx/html/*

# Copy your project files to the Nginx server directory
COPY . /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Nginx starts automatically by default