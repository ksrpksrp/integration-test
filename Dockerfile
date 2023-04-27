# Official Node.js runtime as a parent image
FROM node:14

# Set the working directory 
WORKDIR /e2e

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm install --save-dev typescript
RUN npm install cypress --save-dev

# Copy the entire project directory to the container
COPY . .

# Expose the default Cypress port
EXPOSE 3000

# Start the Cypress test
CMD ["npm", "run", "cypress:run"]
