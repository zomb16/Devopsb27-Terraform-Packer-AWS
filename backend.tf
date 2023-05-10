terraform {
  backend "s3" {
    bucket         = "sreeterraformbucket"
    key            = "dependson-devopsb27.tfstate"
    region         = "us-east-1"
    dynamodb_table = "devopsb27-terraform-locking"
    encrypt        = true
  }
}