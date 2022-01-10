pipeline{
    agent any
    stages{
        stage('hello'){
        steps{
        git credentialsId: 'sainath', url: 'https://github.com/sai-solo/spring3-mvc-maven-xml-hello-world.git'
        }    
        }
        stage('build'){
            steps{
                sh 'mvn packagessssss'
                }
        }
         post {
        failure {
            script {
                currentBuild.result = 'FAILURE'
            }
        }

        always {
            step([$class: 'Mailer',
                notifyEveryUnstableBuild: true,
                recipients: "sainath21997@gmail.com",
                sendToIndividuals: true])
        }
    }
}
}
