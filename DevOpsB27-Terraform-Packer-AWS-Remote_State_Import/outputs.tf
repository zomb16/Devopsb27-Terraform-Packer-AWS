output "vpc_id" {
  value = data.terraform_remote_state.devopsb27-state.outputs.vpc_id
}

output "sg_id" {
  value = data.terraform_remote_state.devopsb27-state.outputs.sg_id
}

output "subnet1_id" {
  value = data.terraform_remote_state.devopsb27-state.outputs.subnet_1
}

output "subnet2_id" {
  value = data.terraform_remote_state.devopsb27-state.outputs.subnet_2
}

output "subnet3_id" {
  value = data.terraform_remote_state.devopsb27-state.outputs.subnet_3
}

