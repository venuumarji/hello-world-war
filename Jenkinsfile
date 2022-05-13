pipeline {
  agent {label 'master'}
    stages {
      stage ('checkout') {
        steps {
                sh 'sudo rm -rf hello-world-war'
                sh 'git clone https://github.com/venuumarji/hello-world-war.git'
                sh 'pwd'
                sh 'ls'
        }
      }
      stage ('docker') {
        steps {
                sh 'sudo chmod 666 /var/run/docker.sock'
                sh 'docker build -t multistage:1.0 .'
         }
      }
      stage ('push') {
        steps {               
                sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 377663637476.dkr.ecr.us-east-1.amazonaws.com'
                sh 'docker tag multistage:1.0 377663637476.dkr.ecr.us-east-1.amazonaws.com/multistage:latest'
                sh 'docker push 377663637476.dkr.ecr.us-east-1.amazonaws.com/multistage:latest'
          }
      }
      
      stage ('deploy') {
        agent {label 'tomcat'}
        steps {
                sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 377663637476.dkr.ecr.us-east-1.amazonaws.com'
                sh 'docker pull 377663637476.dkr.ecr.us-east-1.amazonaws.com/multistage:latest'
                sh 'docker rm -f trail1'
                sh 'docker run -d -p 8092:8080 --name trail1 377663637476.dkr.ecr.us-east-1.amazonaws.com/multistage:latest'
        }
      }
    }
}         
