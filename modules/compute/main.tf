# --- compute/main.tf ---


resource "aws_instance" "ec2" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = var.security_groups
  vpc_security_group_ids = var.vpc_security_group_ids
  tags        = var.tags
  user_data = var.user_data
  associate_public_ip_address = var.associate_public_ip_address
}

