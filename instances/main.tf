resource "aws_instance" "bharatjoshi-ins" {
  ami = var.ami
  instance_type = var.instance_type
  security_groups = [var.sgname ]

  tags = {
    Name = var.Name
  }
}