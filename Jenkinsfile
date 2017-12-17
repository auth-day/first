node {

  def app
  
  stage('Clone repo') {
    checkout scm 
  }
stage ('Build Image') {
  app = docker.build("jtitracesrv10.fls.cloud/test-image") 
  
}
}
