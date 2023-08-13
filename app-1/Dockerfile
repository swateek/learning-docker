# Start with a base image
FROM alpine:latest

# Set a working directory
WORKDIR /app

# Copy Script from docker reference to working directory
COPY sample.sh .

# Set an entrypoint to run when no command is provided
ENTRYPOINT [ "sh", "sample.sh" ]
