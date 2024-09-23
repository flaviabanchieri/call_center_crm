# Step 1: Build the Flutter web app
FROM cirrusci/flutter:latest AS build

WORKDIR /app
COPY . .

# Get Flutter dependencies
RUN flutter pub get

# Build the web app
RUN flutter build web

# Step 2: Serve the web app using Nginx
FROM nginx:alpine

# Copy the built web app from the previous stage
COPY --from=build /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
