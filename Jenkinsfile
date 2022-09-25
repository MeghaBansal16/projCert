pipeline {
    agent {
        label "jenkinsslave"
    }

    stages {
        stage('docker-build') {
            steps {
                sh 'docker build -t projcert:latest .'
            }
        }
        stage('docker-cleanup') {
            steps {
                sh 'docker rm -f projcert-app'
            }
        }
        stage('docker-run') {
            steps {
                sh 'docker run -d -p 8000:80 --name projcert-app projcert'
            }
        }
    }
}

