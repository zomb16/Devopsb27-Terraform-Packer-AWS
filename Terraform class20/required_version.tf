terraform {
  required_version = "1.3.7" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "4.65.0" #Forcing which version of plugin needs to be used.
      source  = "hashicorp/aws"
    }
  }
}
