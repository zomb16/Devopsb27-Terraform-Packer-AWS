# resource "aws_dynamodb_table" "terraform_locks" {
#   name         = "devopsb27-terraform-locking"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"
#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }