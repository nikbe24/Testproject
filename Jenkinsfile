pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/nikbe24/Testproject.git'
            
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
                docker run -d -p 80:80 my-bash-app
                
                '''
            }
        }
    }
}
