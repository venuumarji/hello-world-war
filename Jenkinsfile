pipeline{
   agent any
   stages{
     stage('checkout'){
       steps{
      	sh'git clone https://github.com/manojugowda/hello-world-war.git'
	}
      }
	   stage('build'){
        steps{
	sh 'mvn clean package'
    }
   }

	   	   stage('copy'){
        steps{
	sh 'cp -R /home/jenkins/workspace/job_pipe/target/hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.56/webapps/ '
    }
   }
  }
 }
