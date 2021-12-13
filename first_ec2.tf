provider "aws" {
  region  = "us-east-1"
  profile = "poc"
}

resource "aws_instance" "my-first-ec2" {
  ami           = "ami-0ed9277fb7eb570c9"
  instance_type = "t2.micro"

}
