pipeline{
  agent{lable'slavejava'}
stages{
stage('checkout'){
steps{
sh 'git pull https://github.com/Urssharath/hello-world-war.git'
}
}
stage('build'){
steps{
sh 'mvn clean package'
}
}
}
}
