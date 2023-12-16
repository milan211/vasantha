    resource "aws_instance" "tf_myec2"{
        ami = "ami-0759f51a90924c166"
        instance_type = "t2.micro"
        availability_zone = "us-east-1a"
        tags = {
            "Name" = "webserver"
        } 
        
    }

