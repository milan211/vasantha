pipeline{
    agent any{
        environment{
            git_credentials= credentials ('credentials_id')
        }

        stages{
            stage(example){ 
                steps{
                    script{
                        withCredentials

                    }
                }

            }

        }
            
            {

            }
        }
    }

}