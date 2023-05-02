variable "ingress_rules" {
  default = [{
       from_port   = 8080
       to_port     = 8080
       description = "Port 8080"
   },
   {
       from_port   = 22
       to_port     = 22
       description = "Port 22"
   }]
}

variable "name" {
  type    = string
  default =""
}

variable "description" {
  type    = string
  default =""
}

variable "vpc_id" {
  type    = string
  default =""
}