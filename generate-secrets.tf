# Firstly create a random generated password to use in secrets. 
resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_!$^&*"
}

# Creating a AWS secret for database master account (Masteraccoundb)

resource "aws_secretsmanager_secret" "secretmasterDB" {
  name = "Masteraccoundb1"
}

# Creating a AWS secret versions for database master account (Masteraccoundb)

resource "aws_secretsmanager_secret_version" "sversion" {
  secret_id     = aws_secretsmanager_secret.secretmasterDB.id
  secret_string = <<EOF
   {
    "username": "adminaccount",
    "password": "${random_password.password.result}"
   }
EOF
}

# Importing the AWS secrets created previously using arn.

data "aws_secretsmanager_secret" "secretmasterDB" {
  arn = aws_secretsmanager_secret.secretmasterDB.arn
}

# Importing the AWS secret version created previously using arn.

data "aws_secretsmanager_secret_version" "creds2" {
  secret_id = data.aws_secretsmanager_secret.secretmasterDB.arn
}

# After importing the secrets storing into Locals

locals {
  db_creds_2 = jsondecode(data.aws_secretsmanager_secret_version.creds.secret_string)
}


