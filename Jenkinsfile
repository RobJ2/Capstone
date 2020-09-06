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
                sh ./run_docker.sh
            }
        }
    }
}