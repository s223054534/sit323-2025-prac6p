# Use the official Node.js image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files into the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Expose the port your app will run on (if your app runs on port 8080)
EXPOSE 8080

# Start the application
CMD ["node", "server.js"]

