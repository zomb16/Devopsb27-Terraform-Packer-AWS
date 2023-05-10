resource "aws_s3_bucket" "vpcflowlogsbucket" {
  bucket = "devopsb27vpcflowlogsbucket008"

  tags = {
    Name = "devopsb27vpcflowlogsbucket008"
  }
}