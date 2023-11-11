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
    //                sh 'docker build -t ubuntu:version2 .'
                      sh 'mvn clean package'
                }
            }
        }
        stage('Push artifacts into artifactory') {
            steps {
              rtUpload (
                serverId: 'ArtifactoryID',
                spec: '''{
                      "files": [
                        {
                          "pattern": "*.war",
                          "target": "example-repo-local/"
                        }
                    ]
                }
              
	    }
	}
    }
}
