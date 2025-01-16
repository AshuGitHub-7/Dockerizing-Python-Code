
# Docker Practice: Setting Up and Running Containers

This project contains a set of Docker commands to help you practice Docker skills, including setting up Docker, managing containers, and building a Python-based Docker image.

## Prerequisites

- **Amazon Linux or any other compatible Linux distribution**
- **sudo/root access**

## Steps

### 1. Update System and Install Docker

Update your package manager and install Docker:

```bash
sudo yum update -y
sudo yum install docker -y
```

### 2. Verify Docker Installation

Check Docker version to ensure it's installed correctly:

```bash
sudo docker --version
```

### 3. Start and Enable Docker

Start Docker and ensure it runs on boot:

```bash
sudo systemctl start docker
sudo systemctl status docker
sudo systemctl enable docker
```

### 4. Managing Docker Containers

List available Docker images:

```bash
sudo docker images
```

Pull and run the latest NGINX container:

```bash
sudo docker pull nginx:latest
sudo docker run nginx
```

### 5. List Running Containers

```bash
sudo docker container ls
sudo docker ps -a
```

Run NGINX on port 80:

```bash
sudo docker run -d -p 80:80 nginx:latest
```

View logs for a running container:

```bash
sudo docker logs <container-id>
```

### 6. Stopping and Removing Containers/Images

Stop and remove containers:

```bash
sudo docker container stop <container-id>
sudo docker container rm <container-id>
```

Remove Docker images:

```bash
sudo docker rmi -f <image-id>
```

### 7. Build a Python-based Docker Image

#### Create a Dockerfile:

```bash
sudo touch Dockerfile
sudo touch test.py
```

#### Example `Dockerfile`:

```dockerfile
FROM python:latest
LABEL Maintainer="AshuGitHub-7"
WORKDIR /usr/app/src
COPY test.py .
CMD [ "python", "./test.py"]
```

#### Example `test.py` file:

```python
print("Hello, Docker World!")
```

#### Build and Verify Docker Image:

```bash
sudo docker build -t AshuGitHub-7/pythonhelloworld .
sudo docker images
```

### 8. Login to Docker Hub

If you want to push images to Docker Hub, login using:

```bash
sudo docker login
```

---

## Conclusion

This practice guide covers the basics of setting up Docker, running NGINX, and building a Python Docker image. It's ideal for getting started with Docker containers and basic Dockerfile usage.

Feel free to contribute or raise issues if you encounter any problems.
