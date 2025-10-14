# Use an official Node.js image
FROM node:20

# Set working directory inside the container
WORKDIR /app  # Fixed typo: WORDDIR → WORKDIR

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose Vite's default port
EXPOSE 5173  # Fixed: S173 → 5173

# Run the development server and allow access from outside
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]  # Fixed: CFO → CMD, added missing --