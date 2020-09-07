pipeline {
  agent any
    stages {
       stage('Lint HTML'){
           steps{
             echo 'hello world'   
             script {tidy -q -e index.html}
           }   
       }
    }
  }
}