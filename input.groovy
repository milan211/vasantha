pipeline
{
  agent any
    stages
    {
        stage('checkout')
        {
            steps
            {
                checkout scm
            }
        }

        stage("script stage")
        { 
            steps
             {
                script
                    {
                        def course='k8s'
                        if (course=='k8s')
                        println ("thanks for enrolling to ${course}")
                        else
                        println("do enroll")
                        sleep 60
                        echo "script blocker"
                    }
             }
        }
    }
}