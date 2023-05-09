data "terraform_remote_state" "devopsb27-state" {
  backend = "s3"
  config = {
    bucket = "terraformstatebucketb27"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

