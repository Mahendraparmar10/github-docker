# 1. Use Node.js as the base image
FROM node:22-alpine

# 2. Set the working directory
WORKDIR /app

# 3. Copy package.json
COPY package.json .

# 4. Install dependencies
RUN npm install

# 5. Copy application files
COPY . .

# 6. Document the application port
EXPOSE 3000