# Use an official NGINX image as a base
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the web content into the container
COPY . .

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
