pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/your-repo.git'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'chmod +x ./test_script.sh && ./test_script.sh'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-bash-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker stop my-bash-app || true
                docker rm my-bash-app || true
                docker run -d --name my-bash-app -p 8080:8080 my-bash-app
                '''
            }
        }
    }
}
