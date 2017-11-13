variable "region" {
  description = "The AWS region."
  default     = "us-east-1"
}

variable "environment" {
  description = "The name of our environment, i.e. development."
}

variable "key_name" {
  description = "The AWS key pair to use for resources."
}

variable "public_subnet_ids" {
  default     = []
  description = "The list of public subnets to populate."
}

variable "private_subnet_ids" {
  default     = []
  description = "The list of private subnets to populate."
}

variable "ami" {
  default = {
    "us-east-1" = "ami-f652979b"
    "us-west-1" = "ami-7c4b331c"
  }

  description = "The AMIs to use for API instances."
}

variable "instance_type" {
  default     = "t2.micro"
  description = "The instance type to launch "
}

variable "vpc_id" {
  description = "The VPC ID to launch in"
}

variable "api_instance_count" {
  default     = 5
  description = "The number of API instances to launch."
}
