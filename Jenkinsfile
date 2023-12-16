pipeline {
    agent none
    } 
    stages {
        stage ('Welcome'){
            steps {
                echo "Welcome to jenkins Pipleine Mastery"
                sh 'hostname -i' // this should print the private ip
            }
        }
        stage ('SecondStage'){
            echo "trying to run this script"
            }
            steps {
                echo "Printing in Java Slave"
                sh 'hostname -i'
            }
        }
    }
}
