terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

module "my-security-group" {
  source                 = "./modules/securitygroup"
}

module "my-web-server" {
  source                 = "./modules/appserver"
  instance_type          = terraform.workspace == "qa" ? "t2.micro" : "t2.medium"
  vpc_security_group_ids = [module.my-security-group.security_group_id]
  tag_name = var.my_tag_name
}


// **************** variables ************ /
variable "my_tag_name" {
  description = "my tag name"
  type = string
}

output "example_module_outputs" {
  value = module.my-web-server.end_point_url
}




