# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY . /app

# Install any necessary dependencies
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

# Expose port 8000 to the outside world
EXPOSE 8000

# Run FastAPI using uvicorn server
CMD ["fastapi", "run", "main.py"]
