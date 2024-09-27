sudo yum update -y
sudo yum install docker -y
sudo docker --version
sudo systemctl start docker
sudo systemctl status docker
sudo systemctl enable docker
sudo docker images
sudo docker pull nginx:latest
sudo docker run nginx
sudo docker container ls
sudo docker ps -a
sudo docker run -d -p 80:80 nginx:latest
sudo docker logs container-id
sudo docker container ls
sudo docker rmi -f image-id
sudo docker container stop container-id
sudo docker container remove container-id
sudo docker login
sudo touch Dockerfile
sudo touch test.py
```
FROM python:latest
LABEL Maintainer="atulkamble"
WORKDIR /usr/app/src
COPY test.py .
CMD [ "python", "./test.py"]
```
sudo docker build -t atuljkamble/pythonhelloworld .
sudo docker images
