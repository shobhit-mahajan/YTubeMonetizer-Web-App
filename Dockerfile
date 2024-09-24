<<<<<<< HEAD
FROM ghcr.io/puppeteer/puppeteer:23.4.0


ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci
COPY . .
=======
FROM ghcr.io/puppeteer/puppeteer:23.4.0


ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci
COPY . .
>>>>>>> a50360fe9d672d4820f7f184cfc356abb83ed187
CMD [ "node", "Server.js" ]