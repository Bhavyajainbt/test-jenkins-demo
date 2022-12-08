terraform {
   required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.42.0"
    }  
   } 
}

variable "vpc_region" {
  type = string
}

provider "aws" {
    region = var.vpc_region
}