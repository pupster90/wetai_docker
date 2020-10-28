# wetai_io_docker



# Helpful Docker Commands
**Run docker container**
`docker run -it --privileged -p 8891:80 --name wet-io --user root jupyter/tensorflow-notebook:feacdbfc2e89 /bin/bash `

**commits a docker container**

`docker commit --change='CMD ["tini", "-g", "jupyter", "notebook"]' -c "EXPOSE 80" -c "EXPOSE 8888" io-test  pupster90/io:v3.0.7`

**Save image to Dockerhub**
```
docker tag gcr.io/pupster900/io:latest gcr.io/pupster900/io:3.0
docker push gcr.io/pupster900/io:latest
docker push gcr.io/pupster900/io:3.0
```
**Create a docker images from the docker file**

`docker build --no-cache -t gcr.io/pupster900/io:latest . `

**Save the docker image**
```
docker tag gcr.io/pupster900/io:latest gcr.io/pupster900/io:3.0
docker push gcr.io/pupster900/io:latest
docker push gcr.io/pupster900/io:3.0
```
**Create images from file**

`docker build --no-cache -t gcr.io/pupster900/io:latest . `

**Save the docker image**
```
docker tag gcr.io/pupster900/io:latest gcr.io/pupster900/io:3.0
docker push gcr.io/pupster900/io:latest
docker push gcr.io/pupster900/io:3.0
```
