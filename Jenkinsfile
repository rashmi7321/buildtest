pipeline {
    agent any   	  
    	stages {
        	stage("clone code") {
            	steps {
                script {
                    // Let's clone the source
                    git 'https://github.com/rashmi7321/buildtest.git';
                }
            }
        }
        	stage("mvn build") {
            	steps {
                script {
                    // If you are using Windows then you should use "bat" step
                    // Since unit testing is out of the scope we skip them
                    sh "sed -i 's/buildnumber/$BUILD_NUMBER/g' pom.xml"
                    sh "mvn clean install"
                }
            }
        }
        
    }
}
