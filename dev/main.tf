resource "aws_instance" "myFirstInstance" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.launch-wizard-1.id]
  key_name = "ec2test"
  iam_instance_profile = "DemoRole"
  tags = {
    Name = "myFirstInstance"
  }
}

resource "aws_security_group" "launch-wizard-1" {
  name        = "launch-wizard-1"
  description = "launch-wizard-1 created 2023-04-27T16:34:58.265Z"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
  }

  ingress{
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
  }
}