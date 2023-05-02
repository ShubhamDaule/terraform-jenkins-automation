data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

module "ec2-jenkins" {
  source                 = "../modules/compute"
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  security_groups        = ["launch-wizard-2"]
  key_name               = var.key_name
  user_data              = file("${path.module}/install_jenkins.sh")
  associate_public_ip_address = true
  tags = {
    "Name" = "Jenkins"
  }
  depends_on = [ module.launch-wizard-2 ]
}