pipeline {
    agent { 
        label 'slave1'
    }
    stages {
        stage('Checkout') {
            steps {
                sh 'rm -rf hello-world-war '
                sh 'git clone https://github.com/shb18911/hello-world-war.git'
            }
        }
        stage('Build') {
            steps {
                dir('hello-world-war') {
                    sh 'docker run -it ubuntu:version1 .'
                }
            }
        }
    }
}
