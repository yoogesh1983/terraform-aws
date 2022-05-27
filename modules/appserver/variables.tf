variable "ami_name" {
  description = "AMI Name"
  default = "ami-0aeb7c931a5a61206"
  type = string
}

variable "instance_type" {
  description = "AWS Instance Type"
  type = string
}

variable "vpc_security_group_ids" {
  description = "List of VPC Security Group IDs"
  type = list(string)
}

variable "tag_name" {
  description = "tag name"
  type = string
}

