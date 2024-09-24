# Use the official Puppeteer image from GitHub Container Registry
FROM ghcr.io/puppeteer/puppeteer:19.7.2

# Set environment variables to skip Chromium download and use the installed version
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the project dependencies
RUN npm ci

# Copy the rest of the application files
COPY . .

# Expose the necessary port
EXPOSE 5000

# Define the command to start the application
CMD [ "node", "Server.js" ]
