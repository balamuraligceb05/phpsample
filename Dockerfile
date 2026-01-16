# Use the official PHP image with Apache pre-installed
FROM php:8.3-apache

# Set the working directory to Apache's default document root
WORKDIR /var/www/html

# Copy your application files into the container's web directory
COPY . /var/www/html

# Install additional PHP extensions if needed (e.g., pdo_mysql)
# The helper scripts make this process easier and keep image size smaller
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql

# Expose port 80 to the host machine
EXPOSE 80
