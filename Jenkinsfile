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
                    sh 'ls'
		    sh 'docker --version'
                    sh 'docker build -t bharathsh100/hello-world-war:1.0.0 .'
                    
                }
            }
        }
        stage('Publish') {
            steps {
                dir('hello-world-war') {
                    sh 'ls'
                    sh 'docker login -u bharathsh100 -p dockersh100'
                    sh 'docker push bharathsh100/hello-world-war:1.0.0'
                    
                }
            }
        }
     
	    
	
}
}
