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
                bat 'docker build -t playwright-ci .'
            }
        }

        stage('Run Tests') {
            steps {
                bat 'docker run --rm playwright-ci'
            }
        }

    }
}