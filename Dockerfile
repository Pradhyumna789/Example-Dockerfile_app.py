# Building from ubuntu's offical image
FROM ubuntu

# Set the working directory in the container
WORKDIR /app

# Update apt package, install python and all the dependencies  
RUN apt-get update && apt install -y python3 python3-flask 

# Copy the source code into the container
COPY . /app

# Set the environment variables
ENV FLASK_APP=app.py

# Exposing port
EXPOSE 5000

# Command to run the app
CMD ["flask", "run", "--host=0.0.0.0"]
