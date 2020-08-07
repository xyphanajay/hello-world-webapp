pipeline {
    agent any

    environment {
		DOCKER_REGISTRY='hub.docker.com/master123xxx'
		DOCKER_CREDS='training'
	}

    tools {
        dockerTool "docker"
    }

    stages {
        stage('Build') {
            steps {
                docker info 
                docker build -t jenkins-image:${BUILD_NUMBER} . 
                docker images
            }

            post {
                    sh curl -X POST "https://api.flock.com/hooks/sendMessage/b2e3891f-cf67-4c61-8776-655d77e1e446" -H "Content-Type: application/json" -d '{"text": "Project Name: hello-world-webapp \nBuild Commit: ${commitId} \n Build Status: ${currentBuild.currentResult"}'
                }t
            }
        }
    }
}