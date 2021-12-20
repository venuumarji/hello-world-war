pipeline{
agent{lable'slave_java'}
stages{
stages('checkout'){
steps{
sh 'git clone https://github.com/Urssharath/hello-world-war.git'
}
}
stages('build'){
steps{
sh 'mvn clean package'
}
}
}
}
