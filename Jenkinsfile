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
    withDockerRegistry([credentialsId: 'dockerhub', url: 'https://registry.hub.docker.com']){
      def customImage = docker.build("suryalolla/jenkins_docker:latest")
      customImage.push()
    }

  }
}
