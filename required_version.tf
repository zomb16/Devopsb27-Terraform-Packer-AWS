terraform {
  #required_version = "<= 0.14"  
  required_version = "1.2.6" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      #version = "<= 3.0.0"  
      version = "4.25.0" #Forcing which version of plugin needs to be used.
      source  = "hashicorp/aws"
    }
  }
}
