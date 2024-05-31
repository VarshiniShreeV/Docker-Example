#Official docker image of python (Language specific image-Python version 3.9 - Slim in size)
FROM python:3.9-slim

#Setting the working directory of the application
WORKDIR /app

#Need to create a copy of the files which are to be accessed within the container. 
#Current directory content are copied into the container at /app
COPY . /app

#Installing necessary dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

#Make port available to  the world outside the container. Port (Python=5000)
EXPOSE 5000

#To execute when the container launches, place the files in CMD
CMD ["flask", "run", "--host=0.0.0.0"]