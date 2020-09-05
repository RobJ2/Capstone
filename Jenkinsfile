pipeline {
    agent any
    stages {
        stage('Linting') {
            steps {
                sh 'tidy -q -e *.html'
            }
stage('Security Scan') {
              steps { 
                 aquaMicroscanner imageName: '04193007/capstone', notCompliesCmd: 'exit 1', onDisallowed: 'fail', outputFormat: 'html'
              }
        } 
    }
}