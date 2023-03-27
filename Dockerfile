# Use a lightweight Alpine base image
FROM alpine:latest

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Expose port 8080
EXPOSE 8080

# Define the command to run when the container starts
CMD [ "sh", "-c", "echo 'Starting my app...'" ]
