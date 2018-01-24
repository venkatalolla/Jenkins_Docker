#! groovy

node {
  stage('checkout') {
    git url: 'https://github.com/venkatalolla/Jenkins_Docker.git'
  }

  stage('Build'){
    def mvnHome = tool 'M3'
    sh "${mvnHome}/bin/mvn clean"
  }
}
