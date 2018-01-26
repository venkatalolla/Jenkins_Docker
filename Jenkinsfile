#! groovy

node {
  stage('checkout') {
    git url: 'https://github.com/venkatalolla/Jenkins_Docker.git'
  }

  stage('Build'){
    //def mvnHome = tool 'M3'
    tool name: 'M3', type: 'maven'
    sh "mvn clean"
  }

  stage('DockerBuild'){
     def customImage = docker.build('myfirstdocker:latest}')
            customImage.push()
  }
}
