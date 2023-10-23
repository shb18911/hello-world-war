pipeline {
    agent any
    
    stages {
        stage('checkout') {
            steps {
             sh 'git clone https://github.com/shb18911/hello-world-war.git'
                
            }
        stage('build') {
            steps {
             sh 'mvn clean pakage'
                
            }
        }
    }
}
