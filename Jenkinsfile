pipeline {
    agent any
    stages {
        stage('Linting') {
            steps {
                sh 'tidy -q -e *.html'
                """
            }
        }
        stage('Build Image') {
            steps {
		        sh "echo 'Build Docker Image'"
		        sh "docker build . -t 04193007/capstone ."
            }
        }
        stage('Push image') {
            steps {

            }
        }
        stage('set current kubectl context') {
            steps {

            }
        }
        stage('Deploy container') {
            steps {

            }
        }
    }
}
