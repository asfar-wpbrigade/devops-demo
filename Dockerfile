# Use official Python image as base
FROM python:3.10-slim

# Set work directory inside container
WORKDIR /app

# Copy requirements file & install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the app code
COPY app.py .

# Expose port so Docker knows which port the app uses
EXPOSE 5000

# Command to run app
CMD ["python", "app.py"]
