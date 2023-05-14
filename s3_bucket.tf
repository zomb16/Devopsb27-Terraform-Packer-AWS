resource "aws_s3_bucket" "vpcflowlogsbucket" {
  bucket = "devopsb27flowlogsbucket001${local.bucket_name}"

  tags = {
    Name = "devopsb27flowlogsbucket001${local.bucket_name}"
  }

}