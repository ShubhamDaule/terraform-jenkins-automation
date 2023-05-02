variable "ingressports" {
  type    = list(number)
  default = [8080, 22]
}

variable "key_name" {
  type    = string
  default = "ec2test"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "sg_name" {
  type    = string
  default ="launch-wizard-2"
}

variable "sg_description" {
  type    = string
  default ="launch-wizard-2 Jenkins"
}