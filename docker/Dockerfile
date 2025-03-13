
# Pull official image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the index.html file to the default Nginx web server directory
COPY index.html /usr/share/nginx/html

# Expose the port that the web server will listen on
EXPOSE 8080

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]