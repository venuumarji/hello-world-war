pipeline {
agent any
stages{
stage('checkout'){
steps{
sh 'git pull https://github.com/charan021/hello-world-war.git'
}
}
stage('build'){
steps{
sh 'mvn clean package'
}

}
stage('deploy'){
steps{
sh 'whoami'
sh 'sudo chmod -R 0777 /opt'
sh 'cp -R /home/jenkins/workspace/Job_pipe/target/hello-world-war-1.0.0 /opt/apache-tomcat-9.0.56/webapps'
}
}
}
}
