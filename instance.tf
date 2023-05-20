resource "aws_instance" "instance" {
  ami           = var.image_id
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  key_name      = var.key_pair_name
  security_groups = [aws_security_group.terraform_sg.name]
  tags   = {
    name = "my-instance"
   }
 }

resource "aws_default_vpc" "main" {
  tags = {
    Name = "Default VPC"
  }
}
