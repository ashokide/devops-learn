## Docker

Docker uses images and containers to allow apps to run anywhere

### Docker Architecture

<img src="https://github.com/user-attachments/assets/aae993c6-6705-40ba-a2f4-598d7c605d63" width="60%">

Docker uses a client-server architecture

Install docker in linux environment (Ubuntu)
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

To check `docker version` (Client and Server Version)
```
docker version
```

To check `docker version` (Client Version)
```
docker --version
```

To test docker

```
# hello-world is an image
# run will create and start container from the image given
docker run hello-world
```

To get help

```
docker --help
```

