pipeline {
    agent {
        dockerfile true
    }

    stages {
        stage('deploy') {
            steps {
              sh './dockerBuild.sh'     
            }
        }
    }
    
}
