# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project directory to the working directory
COPY . .

# Build the React app for production
RUN npm run build

# Expose the desired port (change it to your React app's port if needed)
EXPOSE 3000

# Specify the command to run when the container starts
CMD [ "npm", "start" ]
