# Start with a base image
FROM python:3.9

# Set a working directory
WORKDIR /app

# Copy from docker reference to working directory
COPY ./pip-requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir --upgrade -r pip-requirements.txt

# Copy code
COPY ./src ./src

# Set command to run on docker start
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80"]
