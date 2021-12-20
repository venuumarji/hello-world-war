pipeline{
   agent any
   stages{
     stage('checkout'){
       steps{
      	sh'git pull https://github.com/manojugowda/hello-world-war.git'
	}
      }
	   stage('build'){
        steps{
	sh 'mvn clean package'
    }
   }
  }
 }
