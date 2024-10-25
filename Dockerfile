#1. Define Dockerfile
#2. Dockerise : `docker build -t corsy .`
#3. Tag image : `docker tag <image> <docker-repo>:latest`
#4. Login to docker hub : `docker login`
#5. Push/Upload to docker hub : `docker push <docker-repo>:latest`


# Use a base image with Python 3
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the local directory to the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set ENTRYPOINT to allow passing arguments
ENTRYPOINT ["python", "corsy.py"]
