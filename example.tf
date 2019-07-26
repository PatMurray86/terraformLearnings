

provider "aws" {
    profile = "default"
    region = "eu-west-2"
}

resource "aws_instance" "example"{
    ami = "ami-0cbe2951c7cd54704"
    instance_type = "t2.micro"
}

resource "aws_instance" "another_instance" {
    ami = "ami-7ad7c21e"
    instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
    instance = aws_instance.example.id
}

resource "aws_eip" "another_ip" {
    instance = aws_instance.another_instance.id
}
