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