output "vpc_id" {
  value     = data.terraform_remote_state.devopsb27-state.outputs.vpc_id
  sensitive = false
}

output "securitygroup_id" {
  value     = data.terraform_remote_state.devopsb27-state.outputs.securitygroup_id
  sensitive = false
}

output "subnet_1" {
  value     = data.terraform_remote_state.devopsb27-state.outputs.subnet_1
  sensitive = false
}

output "subnet_2" {
  value     = data.terraform_remote_state.devopsb27-state.outputs.subnet_2
  sensitive = false
}

output "subnet_3" {
  value     = data.terraform_remote_state.devopsb27-state.outputs.subnet_3
  sensitive = false
}