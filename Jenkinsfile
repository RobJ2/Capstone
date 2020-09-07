pipeline{
	
	
	agent any
	stages {
		stage('Lint HTML'){
			steps {
				sh 'tidy -q -e index.html'
				
			}
		}
	    stage('Build Image'){
	        steps {withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'dockeruser', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD']]){
	            sh '''
		            sudo docker build -t 04193007/capstone .
		      	    '''
	            }
            }
        }
    }
}
