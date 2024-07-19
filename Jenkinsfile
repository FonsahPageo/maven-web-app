node('built-in') 
{
    stage('Continuous Download') 
    {
      git 'https://github.com/FonsahPageo/maven-web-app.git'
    }
    stage('Continuous Build') 
    {
      sh 'mvn clean install'
      sh 'mvn package'
    }
    stage('Continuous Deploy') 
    {
      steps{
        script {
          docker.image('maven:latest').inside {
            sh 'docker cp var/jenkins_home/workspace/jenkins job/target/webapp.war fonsahdev:/usr/local/tomcat/webapps/qaenv.war' 
          }
        }
      }
    }
    // replace IP address in continuous deploy/delivery with the private IP of the qa/prod server
    stage('Continuous Delivery') 
    {
      steps{
        script {
          docker.image('maven:latest').inside {
            sh 'docker cp var/jenkins_home/workspace/jenkins job/target/webapp.war fonsahprod:/usr/local/tomcat/webapps/prodenv.war'
          }
        }
      }
    }
    stage("Email Notification")
    {
      mail (
        bcc: '',
        body: "${env.JOB_NAME} - Build # ${env.BUILD_NUMBER} - ${currentBuild.currentResult}: Check console output at ${env.BUILD_URL} to view the results. This is an auto-generated email. Do not reply.",
        cc: '',
        from: '',
        replyTo: '',
        subject: "${env.JOB_NAME} - Build # ${env.BUILD_NUMBER} - ${currentBuild.currentResult}!",
        to: 'ashprincepageo@gmail.com'
      )
    }
}          
