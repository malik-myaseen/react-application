# Use the official Node.js image as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package.json ./
COPY package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY src ./src
COPY public ./public

# Expose the port the app runs on
EXPOSE 3000

# Start the development server
CMD ["npm", "start"]
