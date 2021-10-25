resource "aws_instance" "EC2-by-module" {
  ami           = "ami-0e4e4b2f188e91845"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2-MODULE"
  }
}