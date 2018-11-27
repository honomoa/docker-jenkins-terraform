# DOCKER-JENKINS-TERRAFORM

Terraform fit for jenkins pipeline

# How To Use

Jenkinsfile:

```
pipeline {
  agent {
    docker {
      image 'honomoa/docker-jenkins-terraform:0.11.10'
    }
  }
  stages {
    stage('Clone scm') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']],
          userRemoteConfigs: [[url: 'http://git-server/user/repository.git']]])
      }
    }
    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }
  }
}
```
