# Use the latest Node.js image as the base image
FROM node:latest

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY ["package.json", "package-lock.json*", "./"]

# Install the dependencies
RUN npm install

# Copy the current directory contents to the working directory
COPY . .

# Expose port 3000
EXPOSE 3000

# Run the app
CMD ["npm", "start"]