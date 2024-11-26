# Use the official PostgreSQL image (version 15) as the base image
FROM postgres:15

# Declare build arguments with default values for PostgreSQL credentials and database
ARG POSTGRES_USER=postgres
ARG POSTGRES_PASSWORD=postgres
ARG POSTGRES_DB=postgres

# Set environment variables for PostgreSQL based on the build arguments
ENV POSTGRES_USER=$POSTGRES_USER \
    POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
    POSTGRES_DB=$POSTGRES_DB

# Copy SQL initialization script(s) to the Docker-entrypoint directory
# These scripts will be executed automatically during the first container startup
COPY db/init.sql /docker-entrypoint-initdb.d/

# Add comments for better understanding:
# - Base image: PostgreSQL 15.
# - Build arguments allow dynamic configuration of the PostgreSQL user, password, and database name.
# - SQL scripts placed in `/docker-entrypoint-initdb.d/` are executed only once during initialization.
