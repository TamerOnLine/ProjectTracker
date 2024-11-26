# Use a lightweight Python image for a minimal environment
FROM python:3.9-slim

# Define the working directory for the container
WORKDIR /dependencies

# Add the requirements.txt file to the container
COPY requirements.txt .

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt
