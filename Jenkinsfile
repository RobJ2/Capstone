pipeline {
    agent any
    stages {
        stage('Linting') {
            steps {
                sh 'tidy -q -e *.html'
            }
        } 
        stage('Build the Docker image') {
            steps {
                withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD']]){
                    sh '''
                        docker build --tag=04193007/capstone .
                    '''
                }
            }
        }
        stage('Security Testing with Aqua') {
            steps { 
                aquaMicroscanner imageName: '04193007/cloudcapstone', notCompliesCmd: 'exit 1', onDisallowed: 'fail', outputFormat: 'html'
            }
        }
         stage('Push Docker Image') {
              steps {
                  withDockerRegistry([url: "", credentialsId: "dockerhub"]) {
                      sh "docker tag 04193007/cloudcapstone"
                      sh 'docker push '04193007/capstone'
                }
            }
        }
        stage('Create a configuration file for kubectl cluster') {
            steps {
                withAWS(region:'eu-central-1',credentials:'aws-static') {
                    sh '''
                        aws eks --region eu-central-1 update-kubeconfig --name capstonecluster
                    '''
                }
            }
        }
        stage('Set current kubctl context to the cluster') {
            steps {
                withAWS(region:'eu-central-1',credentials:'aws-static') {
                    sh '''
                        kubectl config use-context arn:aws:eks:eu-central-1:560030635442:cluster/capstonecluster
                    '''
                }
            }
        }

    }
}