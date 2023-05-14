#Creating buckets using count function
resource "aws_s3_bucket" "multiplebuckets" {
  count  = 3
  bucket = lower("RRRKFGVIKRAM${count.index + 1}")

  tags = {
    Name = lower("RRRKFGVIKRAM${count.index + 1}")
  }
}

#Creating buckets using foreach function
locals {
  standard_tags = {
    buk1 = "buck1rrkgfvikram"
    buk2 = "buck2rrkgfvikram"
    buk3 = "buck3rrkgfvikram"
  }
}

resource "aws_s3_bucket" "foreachbuckets" {
  for_each = local.standard_tags
  bucket   = each.value

  tags = {
    Name = each.value
  }
}