resource "aws_vpc" "tf_myvpc"{
    cidr_block = "10.0.1.0/16"
    tags = {
        Name = "mainvpc"
    }
}