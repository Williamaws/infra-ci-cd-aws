provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"
  count = 3

  tags = {
    Name = "ci-cd-ec2"
  }
}