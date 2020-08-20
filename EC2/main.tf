resource "aws_instance" "manager" {
  ami                         = var.ami_id
  instance_type               = var.instance
  key_name                    = var.key_name
  associate_public_ip_address = true
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.sg_ids

  tags = {
    Name = "ec2_manager"
  }
}

resource "aws_instance" "worker" {
  ami                         = var.ami_id
  instance_type               = var.instance
  key_name                    = var.key_name
  associate_public_ip_address = true
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.sg2_ids

  tags = {
    Name = "ec2_worker"
  }
}
