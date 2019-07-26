

provider "aws" {
    profile = "default"
    region = var.region
}

resource "aws_instance" "example"{
    ami = var.amis[var.region]
    instance_type = var.instance_type
}

resource "aws_instance" "another_instance" {
    ami = var.amis[var.region]
    instance_type = var.instance_type
}

# resource "aws_eip" "another_eip" {
#     instance = aws_instance.another_instance.id
# }

# resource "aws_eip" "ip" {
#     instance = aws_instance.example.id
# }

resource "aws_eip_association" "eip_assoc" {
    instance_id = aws_instance.example.id
    allocation_id = aws_eip.example.id
}

resource "aws_eip_association" "another_eip_assoc" {
    instance_id = aws_instance.another_instance.id
    allocation_id = aws_eip.another_example.id
}

resource "aws_eip" "example" {
    vpc = true
}

resource "aws_eip" "another_example" {
    vpc = true
}

