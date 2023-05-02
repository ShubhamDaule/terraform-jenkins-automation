resource "aws_security_group" "security_group" {
  name        = var.name
  description = var.description
  vpc_id                 = var.vpc_id

     dynamic "ingress" {
       for_each = var.ingress_rules

       content {
           description = ingress.value.description
           from_port   = ingress.value.from_port   
           to_port     = ingress.value.to_port     
           protocol    = "tcp"
           cidr_blocks = ["0.0.0.0/0"]
       }
   }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
  }
}