
terraform {
  backend "s3" {
    region         = "us-east-1"
    bucket         = "terraformstatebucketb27"
    key            = "terraform.tfstate"
    dynamodb_table = "devopsb27-terraform-locking"
    encrypt        = true
  }
}