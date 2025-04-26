output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.this.id
}
output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = aws_subnet.this[*].id
}
output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.backend.id
  
}