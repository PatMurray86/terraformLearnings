terraform {
  backend "remote" {
    organization = "pacina"

    workspaces {
      name = "pacina-test"
    }
  }
}

provider "aws" {
  version = "~> 2.21"
  profile = "default"
  region  = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0cbe2951c7cd54704"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  instance = aws_instance.example.id
}
