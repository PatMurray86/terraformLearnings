
variable "region" {
    default = "eu-west-2"
}

variable "ami"{
    default = "ami-0cbe2951c7cd54704"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "amis" {
    type = "map"
    default = {
        "eu-west-1" = "ami-06b41651a26fbba09"
        "eu-west-2" = "ami-0cbe2951c7cd54704"
    }
}
