resource "aws_s3_bucket" "vpcflowlogsbucket" {
  bucket = "devopsb27vpcflowlogsbucket001"

  tags = {
    Name = "devopsb27vpcflowlogsbucket001"
  }

  depends_on = [
    aws_s3_bucket.devopsb27one
  ]

  lifecycle {
    create_before_destroy = true
  }

}



resource "aws_s3_bucket" "devopsb27one" {
  bucket = "devopsb27one"

  tags = {
    Name = "devopsb27one"
  }
  depends_on = [
    aws_s3_bucket.devopsb27two
  ]
}

resource "aws_s3_bucket" "devopsb27two" {
  bucket = "devopsb27two"

  tags = {
    Name = "devopsb27two"
  }
  depends_on = [
    aws_s3_bucket.devopsb27three
  ]
}

resource "aws_s3_bucket" "devopsb27three" {
  bucket = "devopsb27three"

  tags = {
    Name = "devopsb27three"
  }
}