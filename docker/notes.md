## Docker

Docker uses images and containers to allow apps to run anywhere

### Docker Architecture

<img src="https://github.com/user-attachments/assets/aae993c6-6705-40ba-a2f4-598d7c605d63" width="60%">

Docker uses a client-server architecture

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

#### To check `docker version` (Client and Server Version)
```
docker version
```

#### To check `docker version` (Client Version)
```
docker --version
```

#### To test docker
```
# hello-world is an image
# run will create and start container from the image given
docker run hello-world
```

#### To get help
```
docker --help
```

#### To create container
```
docker container create <image-name>
```

#### To check the created/running/exited container
```
# -a option will provide all containers (running + non-running)
docker ps -a
```

#### To start the container 
```
docker container start <container-id>
```

#### To check the logs of container
```
docker logs <container-id>
```

#### To attach the container's output to terminal
```
docker container start --attach <container-id>
```

#### To create and start container (simple method)
```
docker run <image-name>
```

> Note: docker run => docker container create + docker container start + docker container attach

#### Create Dockerfile

* Navigate to project directory
* Create a new file and name it `Dockerfile` (no file extension)
* Open the Dockerfile in any editor
  
<img src="https://github.com/user-attachments/assets/971ce091-9f89-4822-b0a8-875186455417" width="30%">

#### Dockerfile Instructions
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

#### Build Docker image
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

#### List images
```
docker images
```

#### Kill running container
```
docker kill <container-id>
```

#### To run container in `detached` mode
```
docker run -d <image-name>
```
