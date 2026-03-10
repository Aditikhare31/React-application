pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                Checkout scm
            }
        }   

        stage('Build') {
            steps {
                sh './build.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh './deploy.sh'
            }
        }
    }  
}
