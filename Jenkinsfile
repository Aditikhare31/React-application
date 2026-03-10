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

        stage('Deploy to dev') {
            when {
                branch 'dev'
            }
            steps {
                sh './deploy.sh'
            }
        }

        stage('Deploy to Prod') {
            when {
                branch 'master'
            }
            steps {
                sh './deploy.sh'
            }
        }
    }  
}
