resource "aws_instance" "TF-EC2" {
  ami           = "ami-0e4e4b2f188e91845"
  instance_type = "t2.micro"

  tags = {
    Name = "TF-EC2"
  }
}