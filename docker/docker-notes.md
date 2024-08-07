## Docker

Docker uses images and containers to allow apps to run anywhere

### Docker Architecture

<img src="https://github.com/user-attachments/assets/aae993c6-6705-40ba-a2f4-598d7c605d63" width="60%">

Docker uses a client-server architecture

## Best Practices
* Use Verfied Images / Container Image Scanner
* Avoid Latest tag
* Use Non-root user

#### Install docker in linux environment (Ubuntu)
```
# ensure that you have the command line utility cURL
which curl

# If cURL is not installed, update your package manager and install it
sudo apt-get update
sudo apt-get install curl

# get the latest Docker package
curl -fsSL https://get.docker.com/ | sh

# Add your account to the docker group
sudo usermod -aG docker $USER
```

#### Check `docker version` (Client and Server Version)
```
docker version
```

#### Check `docker version` (Client Version)
```
docker --version
```

#### Test docker
```
# hello-world is an image
# run will create and start container from the image given
docker run hello-world
```

#### Get help
```
docker --help
```

## Containers
#### Create container
```
docker container create <image-name>
```

#### Check the created/running/exited container
```
# -a option will provide all containers (running + non-running)
docker ps -a
```

#### Start the container 
```
docker container start <container-id>
```

#### Check the logs of container
```
docker logs <container-id>
```

#### Attach the container's output to terminal
```
docker container start --attach <container-id>
```

#### To create and start container (simple method)
```
docker run <image-name>
```

> Note: docker run => docker container create + docker container start + docker container attach

#### Kill running container
```
docker kill <container-id>
```

#### Run container in `detached` mode
```
docker run -d <image-name>
```

#### Remove container automatically once stopped
```
docker run --rm <image-name>
```

## Interact with running container
```
docker exec <container-id> <executable>
```

`--interactive` or `-i` transfer the input into container<br>
`--tty` or `-t` container's output is attached to your terminal<br>
``` 
docker exec --interactive --tty <container-id> <executable>
```

Example

```
docker exec -it d1335ce71f54af59e0ba91a52cd0dba9bb9670c90d438798847516aa19562746 bash
```
To Exit
`
ctrl + d
`

#### Stop running container
```
# docker gracefully stops the container
docker stop <container-id>

# docker stops the container immediately
# `-t` is the time to stop the container
docker stop -t 0 <container-id>
```

#### Remove stopped container
```
docker rm <container-id>
```

#### Remove running container
```
docker rm -f <container-id>
```

#### List all Container Id
```
docker ps -aq
```

#### Remove all containers
```
docker ps -aq | xargs docker rm
```

## Images
#### List images
```
docker images
```

## Custom Docker Image
#### Create Dockerfile
* Navigate to project directory
* Create a new file and name it `Dockerfile` (no file extension)
* Open the Dockerfile in any editor
  
<img src="https://github.com/user-attachments/assets/971ce091-9f89-4822-b0a8-875186455417" width="30%">

## Dockerfile Instructions
#### `FROM` instruction specifies the base image for the container
```
FROM <base-image:tag>
```

Example
```
FROM node:14-alpine3.16
```

#### `WORKDIR` instruction sets the working directory
```
WORKDIR <working-directory>
```

Example
```
WORKDIR /app
```

> Any subsequent commands in the Dockerfile, such as `COPY, RUN, or CMD`, will be executed in this directory. <br>
> It’s important to note that the `WORKDIR` instruction creates the directory if it does not already exist.

#### `COPY` instruction to copy local files from the host machine to the current working directory
```
COPY <source> <destination>
```

Example
```
COPY package.json /app/
COPY . .
```
> copy all files and directories from the current directory on the host machine (indicated by “.”) to the current directory within the container.

#### `RUN` instruction to execute commands
```
RUN <command>
```

Example
```
RUN npm install
```

#### `CMD` instruction sets the command that will be executed when a container is started
```
CMD ["executable","param1","param2",...]
```

Example
```
CMD ["npm", "start"]
```

#### `ENV` instruction to set environment variables
```
ENV <env-name> <env-value>
```

Example
```
ENV NODE_ENV production
```

#### `EXPOSE` command to tell Docker which ports the container will listen on at runtime
```
EXPOSE <port-value>
```

Example
```
ENV 9000
```

## Build Docker image
```
# .(period) refers to the context (folder) containing the files
# By default, it will be build using the file called `Dockerfile`

docker build -t <image-name> .

# If not specify the Dockerfile path with --file

docker build -t <image-name> --file prod.Dockerfile .
```

#### Tag Docker image
```
docker tag <old-image-name> <new-image-name:tag>
```
Example

```
docker tag my-webserver my-webserver:0.0.1
```

#### Remove Image
```
docker rmi <image-name>

# Force delete
docker rmi -f <image-name>
```

## Expose Port
```
docker run -p <host-port>:<container-port> <image-name>
```

Example
```
docker run -p 8080:80 nginx
```

## Persist Data (Volumes)
```
docker run -v <host-path>:<container-path> <image-name> 
```

## Docker Hub Login
```
docker login -u <username> -p <password>
```

#### Push Image
> Before pushing the image, make sure the image has proper tag e.g., `<username>/<image-name:version>`
```
docker push <dockerhub-username>/<image-name:version>
```
#### Search Image
```
docker search <image-name>
```

#### Pull Image
```
docker pull <image-name>
```

#### System Prune
Removes all stopped containers, all unused networks, all dangling images, all unused build cache
```
docker system prune 
```

## Other Commands

#### To check container stats
```
docker stats <container-id>
```

#### To get more information about container
```
docker inspect <container-id>
```
