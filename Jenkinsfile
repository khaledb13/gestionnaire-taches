pipeline {
    agent none
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dh_cred')
    }

    stages {
        stage('Checkout'){
            agent any
            steps{
                checkout scm
            }
        }

        stage('Init'){
            agent any
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }

        stage('Build & Push'){
            def dockerfilePath = "paper-kit-2-angular-master/Dockerfile"
docker.build("votre-image:tag", "-f ${dockerfilePath} .")
            def dockerfilePath = "plantManagement/Dockerfile"
docker.build("votre-image:tag", "-f ${dockerfilePath} .")
            agent any
            steps {
                sh 'docker build -t $DOCKERHUB_CREDENTIALS_USR/anime-hub:$BUILD_ID .'
                sh 'docker push $DOCKERHUB_CREDENTIALS_USR/anime-hub:$BUILD_ID'
                sh 'docker rmi $DOCKERHUB_CREDENTIALS_USR/anime-hub:$BUILD_ID'

            }
        }

        stage('logout'){
            agent any
            steps {
                sh 'docker logout'
            }
        }

    }
}
