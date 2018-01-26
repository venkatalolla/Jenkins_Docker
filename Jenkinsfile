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
    docker.image('ubuntu:16.04').inside {
            sh "ps -ef"
        }
  }
}
