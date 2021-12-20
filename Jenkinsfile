pipeline{
  agent any
stages{
stage('checkout'){
steps{
sh 'git clone https://github.com/Urssharath/hello-world-war.git'
}
}
stage('build'){
steps{
sh 'mvn clean package'
}
}
}
}
