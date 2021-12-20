pipeline{
	agent { label 'group2' }
   stages{
     stage('checkout'){
       steps{
      	sh'git pull https://github.com/manojugowda/hello-world-war.git'
	}
      }
	   stage('build'){
        steps{
	sh'mvn clean package'
    }
   }

	   	   stage('copy'){
        steps{
		sh'sudo chmod -R 0777 /opt'
	sh'cp -R /home/slave-3/jenkins/workspace/package/target/hello-world-war-1.0.0.war /opt/apache-tomcat-9.0.56/webapps'
    }
   }
  }
 }
