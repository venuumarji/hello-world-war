pipeline {
  agent { label 'tomcat' }
   stages {
    stage('checkout') {
     steps {
      	       sh 'git pull https://github.com/venuumarji/hello-world-war.git'
       }
    }
    stage('build') {
     steps {
	        sh 'mvn clean package'
      }
    }
    stage('copy') {
     steps {
	     sh 'sudo cp -r /home/ubuntu/hello-world-war/target/hello-world-war-1.0.0.war   /home/slave1/apache-tomcat-9.0.62/webapps'
     }
    }
  }
 }
