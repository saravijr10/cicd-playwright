pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/saravijr10/cicd-playwright.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t playwright-ci .'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'docker run --rm playwright-ci'
            }
        }

    }
}