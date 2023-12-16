resource "aws_instance" "tf_ec2"{
        ami = "ami-0759f51a90924c166"
        instance_type = "t2.micro"
        availability_zone = "us-east-1a"
        key_name = "terriaws"
        subnet_id = "aws_subnet.mainvpc"
        vpc_security_group_ids = "aws_security_group.tf_sg_new.id"
        user_data = <<-EOF
        #! /bin/bash
         sudo yum update -y
         sudo yum install httpd -y
         sudo service httpd start
         systemctl enable httpd
         EOF
        
        tags = {
            "Name" = "demo_ec2_vpc"
            
        }
}