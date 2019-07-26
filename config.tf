terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

module "consul" {
  source      = "hashicorp/consul/aws"
  num_servers = "3"
}

