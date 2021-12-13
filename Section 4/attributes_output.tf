provider "aws" {
  region  = "us-east-1"
  profile = "poc"
}

resource "aws_instance" "web" {
  ami           = "ami-0ed9277fb7eb570c9"
  instance_type = "t2.micro"

  tags = {
    Name = "tf-instance"
  }
}

output "ec2" {
  value=aws_instance.web.id
}
