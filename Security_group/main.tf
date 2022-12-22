resource "aws_security_group" "Bharat-sg" {
  name        = var.name
  vpc_id      = var.vpc_id

 

  dynamic "ingress" {


    for_each = var.ports
    iterator = port

    
    content {
    description = port.key
    from_port        = port.value
    to_port          = port.value
    protocol         = "tcp"
    cidr_blocks      = [var.cidr]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.tags["Name"]
    Owner = var.tags["Owner"]
    Purpose = var.tags["Purpose"]
  }

}
