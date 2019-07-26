

output "ip" {
    value = aws_eip.ip.public_ip
}

output "ami" {
    value = aws_instance.example.ami
}