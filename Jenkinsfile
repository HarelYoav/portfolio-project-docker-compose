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