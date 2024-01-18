# Use the official Node.js image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /my_workspace

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application files to the working directory.
COPY . .

# Define the command to run the app
CMD [ "npm","start", "app.js" ]