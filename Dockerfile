FROM node:16-alpine

WORKDIR /usr/src/app

# Install node dependencies - done in a separate step so Docker can cache it
COPY package*.json ./
RUN npm install

# Copy project files into the image
COPY . .

# Expose port 3000, which is what the node process is listening to
EXPOSE 3000

# Set the startup command to 'node start'
CMD [ "node", "server.js"] 
