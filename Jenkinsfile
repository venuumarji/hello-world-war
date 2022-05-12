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
                sh 'cd hello-world-war'
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
    }
}         
