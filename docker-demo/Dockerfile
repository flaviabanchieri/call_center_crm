# Stage 1: Build the Flutter web app
FROM cirrusci/flutter:latest AS build

# Set the working directory
WORKDIR /app

# Copy the pubspec.yaml and install dependencies
COPY pubspec.yaml pubspec.lock ./
RUN flutter pub get

# Copy the rest of the app code
COPY . .

# Build the Flutter web app
RUN flutter build web

# Stage 2: Serve the app using Nginx
FROM nginx:alpine

# Copy the built files from the previous stage
COPY --from=build /app/build/web /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
