resource "aws_security_group" "sg_manager" {
  vpc_id      = var.vpc_id
  name        = "sg_manager"
  description = var.sg_web_description

  dynamic "ingress" {
    iterator = port
    for_each = var.ingress_ports
    content {
      from_port   = port.value
      protocol    = "tcp"
      to_port     = port.value
      cidr_blocks = [var.my_ip]
    }
  }

  ingress {
    description = "Internet access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.open_internet]
  }

  egress {
    from_port   = var.outbound_port
    protocol    = "-1"
    to_port     = var.outbound_port
    cidr_blocks = [var.open_internet]
  }
}

resource "aws_security_group" "sg_worker" {
  vpc_id      = var.vpc_id
  name        = "sg_worker"
  description = var.sg_web_description

  dynamic "ingress" {
    iterator = port
    for_each = var.ingress_ports2
    content {
      from_port   = port.value
      protocol    = "tcp"
      to_port     = port.value
      cidr_blocks = [var.my_ip]
    }
  }

  egress {
    from_port   = var.outbound_port
    protocol    = "-1"
    to_port     = var.outbound_port
    cidr_blocks = [var.open_internet]
  }
}

