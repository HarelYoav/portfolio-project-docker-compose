
#!/bin/bash

docker run -it -u root -d -p 8080:8080 -p 50000:50000 \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $(which docker):/usr/bin/docker \
-v /var/jenkins_home:/var/jenkins_home \
--name jenkins jenkins/jenkins:lts