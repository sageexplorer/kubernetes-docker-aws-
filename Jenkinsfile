pipeline {
  agent any 
  stages {
    stage('Lint HTML'){
      steps{
         sh 'tidy -q -e index.html'
        }
      }
      stage('Upload to AWS.') {
        steps {
          withAWS(credentials:'aws-static') {
           s3Upload(file:'index.html', bucket:'jenkinsudacityproject', path: 'index.html')
            }
        }
      }
    }
  }