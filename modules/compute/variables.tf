# --- comput/variables.tf --
variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = null
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = null
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with"
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  default     = {}
}

variable "user_data" {
  description = "The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user_data_base64 instead"
  type        = string
  default     = null
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with an instance in a VPC"
  type        = bool
  default     = null
}

variable "security_groups" {}
