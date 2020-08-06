pipeline {
    agent {
        dockerfile true
    }

    stages {
        stage('deploy') {
            steps {
                sh "docker build -t cent1:cent1 /var/lib/jenkins/workspace/pipe/Dockerfile"
                sh "docker run -itd --name cont2 cent1:cent1 /bin/bash"
            
            }
        }
    }
    
}
