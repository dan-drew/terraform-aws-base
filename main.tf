data "aws_caller_identity" "current" {
}

data "aws_region" "current" {
}

data "aws_availability_zones" "zones" {

}

terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}
