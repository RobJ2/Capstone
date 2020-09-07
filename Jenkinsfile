pipeline{
	
	
	agent any
	stages {
		stage('Lint HTML'){
			steps {
				sh 'tidy -q -e index.html'
				
			}
		}
	    stage('Build Image'){
	        steps withAWS(credentials: 'aws-credentials', region: 'eu-central-1') {
	            sh '''
		        docker build -t 04193007/capstone .
		        '''
	            }
            }
        }
    }
}
