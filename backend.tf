terraform {
  backend "s3" {
    bucket         = "terraformstatebucketb27"
    key            = "functions-terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "devopsb27-terraform-locking"
    encrypt        = true
  }
}