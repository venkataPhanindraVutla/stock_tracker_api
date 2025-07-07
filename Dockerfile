# Use a base Node.js image
FROM node:latest

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies
# If nodemon is in devDependencies and you want it in the production image,
# you might need to run npm install without --production.
# For development, you definitely want all dependencies installed.
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port your application listens on (e.g., 3000)
EXPOSE 3002

# Define the command to run your application
CMD ["npm", "start"]