pipeline {
    agent none

    stages {
        stage('Checkout') {
            agent {
                label 'slave1'
            }
            steps {
                sh 'rm -rf *'
                sh 'git clone https://github.com/shb18911/hello-world-war.git'
            }
        }
        stage('Build') {
            agent {
                label 'slave1'
            }
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
