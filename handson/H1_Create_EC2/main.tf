terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.5.0"
        }
    }
    required_version = ">=1.0"
}

provider "aws" {
    profile = "default" # Uses AWS CLI Profile 
    region = var.aws_region
}

