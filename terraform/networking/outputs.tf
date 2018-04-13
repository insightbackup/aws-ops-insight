# Output file to highlight customized outputs that are useful (compared to the hundreds of attributes Terraform stores)
# To see the output after the apply, use the command: "terraform output"


# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = "${module.vpc.vpc_id}"
}

# Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = ["${module.vpc.private_subnets}"]
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = ["${module.vpc.public_subnets}"]
}

# NAT gateways
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = ["${module.vpc.nat_public_ips}"]
}

# Security Groups
output "open_sg_id" {
  description = "The ID of the security group"
  value       = "${module.completely_open_sg.this_security_group_id}"
}

output "open_sg_owner_id" {
  description = "The owner ID"
  value       = "${module.completely_open_sg.this_security_group_owner_id}"
}

output "open_sg_name" {
  description = "The name of the security group"
  value       = "${module.completely_open_sg.this_security_group_name}"
}

output "open_sg_description" {
  description = "The description of the security group"
  value       = "${module.completely_open_sg.this_security_group_description}"
}

output "open_ssh_sg_id" {
  description = "The ID of the security group"
  value       = "${module.security-group_ssh_open.this_security_group_id}"
}

output "open_ssh_sg_owner_id" {
  description = "The owner ID"
  value       = "${module.security-group_ssh_open.this_security_group_owner_id}"
}

output "open_ssh_sg_name" {
  description = "The name of the security group"
  value       = "${module.security-group_ssh_open.this_security_group_name}"
}

output "open_ssh_sg_description" {
  description = "The description of the security group"
  value       = "${module.security-group_ssh_open.this_security_group_description}"
}