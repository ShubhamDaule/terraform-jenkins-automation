data "aws_vpc" "default" {
  default = true
}

data "aws_security_group" "default" {
  name   = "default"
  vpc_id = data.aws_vpc.default.id
}

module "launch-wizard-2" {
  source = "../modules/security-group"
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = data.aws_vpc.default.id
  
}