# A simple Flask app on Docker

## Description
This is a simple Flask app to experiment with Flask and Docker.

## Flask part
The Flask app is a simple app that returns,
```
Hello from Cyrus!
```

Code is in this repo and you can clone it to your local machine.

## Docker part
The Dockerfile is a simple Dockerfile that builds a Docker image based on the python:3.7-alpine image. It copies the app.py file to the /app directory and runs the app.py file.



## Create the Docker image
To create the Docker image, run the following command:
```
docker build -t yourtag .
```
Replace `yourtag` with the tag you want to give to your image.

You can check if the image was created in the list of images:
```
docker images ls

```

![LIST OF IMAGES](/images/image.png)
## Create a container from the Docker image
To run the Docker image, we create a container(instance of docker image) from the image and map the port 5000 of the container to the port 5000 of the host.

```
docker run -d -p 5000:5000 yourtag
```
Replace `yourtag` with the tag you gave to your image.



## Test the Flask app

To test the Flask app, open a browser and go to http://localhost:5000


![Web test](/images/web.png)


## Push the Docker image to Docker Hub
To push the Docker image to Docker Hub, you need to create a repository on Docker Hub. 

![Dockerhub](/images/dockerhub.png)

Then, you need to login to Docker Hub from the command line.
```
docker login
```
You will be prompted to enter your Docker Hub username and password.


Then, you need to tag the image with the name of your repository and push it to Docker Hub.

```
docker tag yourtag yourdockerhubusername/yourrepositoryname

docker push  yourdockerhubusername/yourrepositoryname
```
Replace `yourtag` with the tag you gave to your image, `yourdockerhubusername` with your Docker Hub username and `yourrepositoryname` with the name of your repository.

![Pushing to docker](/images/pushingtodocker.png)


If you go to your Docker Hub repository, you will see the image there.

![dockerpushed](/images/dockerpushed.png)


## Pull the Docker image from Docker Hub
Now that the image is on Docker Hub, you can pull it from Docker Hub to your local machine. Also, your colleagues can pull it from Docker Hub to their local machines.

To pull the image from Docker Hub, run the following command:
```
docker pull yourimage
```


## Clean up
To clean up, you can delete the container and the image from your local machine.

To delete the container, run the following command:
```
docker rm yourcontainerid
```

To delete the image, run the following command:
```
docker rmi yourimageid
```

Replace `yourcontainerid` with the id of your container and `yourimageid` with the id of your image.


## Conclusion
In this tutorial, we created a simple Flask app and a Docker image for it. We pushed the Docker image to Docker Hub and pulled it from Docker Hub to our local machine. We also cleaned up by deleting the container and the image from our local machine.

### Note: 
If you have any questions or wamt to contribute to this repo, please contact me at cyruschegecc@gmail.com


Thank you and happy coding :)