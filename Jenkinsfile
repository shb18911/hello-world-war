pipeline {
    agent { 
        label 'slave1'
        }
    stages {
        stage('Checkout') {
            steps {
                sh 'rm -rf *'
                sh 'git clone https://github.com/shb18911/hello-world-war.git'
            }
        }
        stage('Build') {
            steps {
                sh 'cd hello-world-war'
                sh 'mvn clean package'
            }
        }
    }
}
