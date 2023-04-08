terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"    
          version = "~> 3.0"
        }
   }
}

provider "aws" {
  region      = "us-east-1"
access_key    = "abcdefghijqrs"
   secret_key = "ieTteuXu9lVTOabcd"
}


resource "aws_instance" "myinstance01" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  count = "1"

  tags = {
    Name = "Server_w001"
  }
}
resource "aws_instance" "myinstance02" { 
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  count = "1"

  tags = {
    Name = "Server_w002"
  }
}  
