#!/bin/sh
#!/bin/sh
#docker rmi  tungnh2022/apihello:latest
docker container stop myjenkins
docker run -d -p 3000:3000 --name myjenkins --rm tungnh2022/jenkins-setup:latest