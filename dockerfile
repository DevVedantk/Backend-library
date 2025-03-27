# Use Node.js 22 (Debian-based)
FROM node:22

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package.json package-lock.json ./

# Ensure bcrypt is installed correctly
RUN npm install && npm rebuild bcrypt --build-from-source

# Copy the rest of the app
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["npm", "run", "dev"]
