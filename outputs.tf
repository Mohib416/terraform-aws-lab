output "training_vpc_id" {
  description = "Identificatore della VPC"
  value       = aws_vpc.training_network.id
}

output "training_subnet_id" {
  description = "Identificatore della subnet"
  value       = aws_subnet.training_subnet.id
}

output "training_security_group_id" {
  description = "Identificatore del Security Group"
  value       = aws_security_group.training_firewall.id
}
