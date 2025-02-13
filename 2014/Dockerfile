# Stage 1: Build the React app
FROM node:14 as build

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app source code and build
COPY . .
RUN npm run build

# Stage 2: Serve the React app using NGINX
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
