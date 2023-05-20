resource "aws_security_group" "terraform_sg" {
  name        = "terraform_sg"
  description = "Allow inbound traffic"
  vpc_id      = aws_default_vpc.main.id

  ingress {
    description      = "Allow traffic"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "All traffic"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform_sg"
    instance_name = "my-instance" 
  }
}
