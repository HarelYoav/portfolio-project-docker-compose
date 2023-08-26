pipeline {
    agent any
    // options {
    //     skipStagesAfterUnstable()
    // }
    stages {
         stage('Clone') { 

            steps {
                // git branch: 'main', url: "https://github.com/HarelYoav/portfolio-project-docker-compose.git"
                echo "empty"
            }
            
            
        }

        stage('Build') { 
            steps { 
                script{
                    echo $(pwd)
                 app = docker.build("yoavdocker89" + "/portfolio-nginx:latest", "/nginx")
                }
            }
        }
        stage('Test'){
            steps {
                 echo 'Empty'
            }
        }
        stage('Deploy') {
            steps {
                // script{
                //         docker.withRegistry('https://docker.io', 'docker') {
                //     app.push("${env.BUILD_NUMBER}")
                //     app.push("latest")
                //     }
                // }
                echo 'Empty'

            }

        }
    }
}


docker run -it -u root -p 8080:8080 -p 50000:50000 \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $(which docker):/usr/bin/docker \
-v /var/jenkins_home:/var/jenkins_home \
--name jenkins jenkins/jenkins:lts