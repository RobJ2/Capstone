pipeline {
    agent any
    stages {
        stage('Linting') {
            steps {
                    sh ''''tidy -q -e *.html'
                '''
            }
        }
        stage('Build Image') {
            steps {
		      withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD']]){
                sh '''
		        docker build -t 04193007/capstone .
		        '''
                }
            }
        }
    }
}
