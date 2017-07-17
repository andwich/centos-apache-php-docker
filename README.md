centos-apache-php-docker
---

# Description
Only `CentOS + Apache + PHP` Docker settings.  

# Install
- Docker for Mac
  - [Download](https://docs.docker.com/docker-for-mac/)

# Usage
## Build Docker image
```bash
docker build -t my-docker:1.0 .
```
## Launch Docker container
```
docker run --rm -it -p 8888:80 -v $(pwd)/docroot:/var/www my-docker:1.0
# `localhost:8888` display `docroot/index.html`
```

# Commands
```
docker images                 # Show Docker images.
docker ps -a                  # Show all Docker containers.
docker ps                     # Show active Docker containers.
docker rmi [imageID, ...]     # Remove Docker image.
docker rm [containerID, ...]  # Remove Docker container.
docker rm `docker ps -a -q`   # Remove all disabled containers.
```

# Tips
- Specify files that you don't want to synchronize.
  - Add file directory to `.dockerignore`.

# Lisence
MIT
