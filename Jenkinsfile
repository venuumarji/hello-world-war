pipeline{
   agent any
   stages{
   stage('build'){
        steps{
	sh 'mvn clean package'
    }
   }
	   
	   stage('root'){
        steps{
	sh 'sudo chmod -R 0777 /opt'
    }
   }
	   stage('copy'){
        steps{
	sh 'sudo cp /home/ubuntu/hello-world-war/target/hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.56/webapps/'
    }
   }
  }
 }
