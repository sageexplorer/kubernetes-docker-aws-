pipeline {
  agent any 
  stages {
    stage('Lint HTML'){
      steps{
         sh 'tidy -q -e index.html'
        }
      }
      stage('Build Docker Image') {
        steps {
          sh './run_docker.sh'
            }
        }
      }
    }
  }