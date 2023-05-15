data "terraform_remote_state" "devopsb27-state" {
  backend = "s3"
  config = {
    bucket = "sreeterraformbucket"
    key    = "devopsb27.tfstate"
    region = "us-east-1"
  }
}
