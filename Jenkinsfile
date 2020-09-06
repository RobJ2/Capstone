pipeline {
    agent any
    stages {
        stage('Linting') {
            steps {
                sh 'tidy -q -e *.html'
                """
            }
        }
        stage('Build Docker Image') {
            steps {
		        sh "echo 'Build Docker Image'"
		        sh "docker build . -t 04193007/capstone ."
            }
        }
    }
}