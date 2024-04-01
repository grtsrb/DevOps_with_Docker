# Start from the ubuntu image
FROM ubuntu:22.04

# Update package list and install curl
RUN apt-get update
RUN apt-get -y install curl

# Set working directory to /usr/src/app
WORKDIR /usr/src/app

# Copy script.sh
COPY script.sh .

# Execute
ENTRYPOINT ["./script.sh"]

