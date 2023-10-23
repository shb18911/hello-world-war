pipeline {
    agent none
    
    stages {
        agent { 
            lable 'slave1'
           }
        stage('checkout') {
            steps {
             sh 'git clone https://github.com/shb18911/hello-world-war.git'
                
            }
        stage('Build') {
            agent { 
            lable 'slave1'
           }
            steps {
             sh 'mvn clean pakage'
                
            }
        }
    }
}
