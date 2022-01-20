terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.48.0"
    }
  }
}
provider "aws" {
  access_key = "AKIAWGSFTBTOYDD3VAUH"
  secret_key = "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"
  region = "us-west-2"
}

resource "aws_instance" "docker engine" {
  ami = "ami-066333d9c572b0680"
  instance_type = "t2.micro"
}
resource "aws_key_pair" "EC2" {
  key_name   = "EC2"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCFX8XSjR4ONh9U2YjhzeHxLAk2hfDEIwTKGVWbkDqC2gAt3aaQA24DilE1NolKStyMGxnQMZU0JtSJIkfSBYrTwI2FCKUmsMarHr8eaQs1B0++pkUrkZMAdMJ0ijFcLffdxnikxuatBA3SOw6e03bTMyLamJRIQ0KFR9j8lrZObwKdwRpC5LjttZIZD8xW/KOsT3tHf6MKZaz9/p5KwQ5YkKECSBtvc/gUkRBylRxRvMiPycsLPrYHHitpyRehOpOPlmG3lk+6K8w91I6+O7vJ06Bt1EzTtGxv+4QdRO3j2EzIF6SCemT0X0LnuIQGkIyTbN1ECUrv5IFXYC/s2jHZ EC2"
}
