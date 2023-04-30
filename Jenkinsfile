pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        sh 'echo "stage of stage1"'
      }
    }

    stage('Build Custom Environment') {
      steps {
        sh 'echo "stage of Build"'
      }
    }

    stage('Build') {
      steps {
        sh 'echo "stage of build"'
      }
    }

    stage('Test') {
      parallel {
        stage('Test Sample Client') {
          steps {
            sh 'echo "stage of test"'
            sh 'echo "stage of sample test"'
          }
        }

        stage('Test Server') {
          steps {
            sh 'echo "stage of test server"'
          }
        }

      }
    }

    stage('Prepare Docker Image') {
      steps {
        sh 'echo "stage of docker"'
      }
    }

    stage('Build and Push Docker Image') {
      steps {
        sh 'echo "stage of docker image"'
      }
    }

    stage('Deploy DEV') {
      parallel {
        stage('Deploy DEV') {
          steps {
            sh 'echo "stage of deploy"'
          }
        }

        stage('Production') {
          steps {
            sh 'echo "stage of production"'
          }
        }

        stage('Operation') {
          steps {
            sh 'echo "this stage of Operation"'
          }
        }

      }
    }

    stage('Verify Deployment') {
      steps {
        sh 'echo "stage of deployment"'
      }
    }

  }
}