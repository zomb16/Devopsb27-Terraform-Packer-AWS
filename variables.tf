variable "vpc_name" {
  type        = string
  default     = "Bhavanya VPC"
  description = "Name for VPC"
}

variable "cidr_block" {
  type        = string
  default     = "10.4.0.0/16"
  description = "CIDR block for VPC"
}

variable "env" {
  type        = string
  default     = "development"
  description = "Environment for VPC"
}

# variable "IGW_name" {
#   type        = string
#   default     = "testvpc001-IGW01"
#   description = "Internet Gateway for VPC"
# }

variable "public_subnet1_cidr" {
  type        = string
  default     = "10.4.1.0/24"
  description = "CIDR block for Subnet1"
}

variable "public_subnet2_cidr" {
  type        = string
  default     = "10.4.2.0/24"
  description = "CIDR block for Subnet2"
}

variable "public_subnet3_cidr" {
  type        = string
  default     = "10.4.3.0/24"
  description = "CIDR block for Subnet3"
}

variable "public_subnet1_name" {
  type        = string
  default     = "testvpc001-subnet-1"
  description = "Name for Subnet-1"
}

variable "public_subnet2_name" {
  type        = string
  default     = "testvpc001-subnet-2"
  description = "Name for Subnet-2"
}

variable "public_subnet3_name" {
  type        = string
  default     = "testvpc001-subnet-3"
  description = "Name for Subnet-3"
}

