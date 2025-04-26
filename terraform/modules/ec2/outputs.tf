output "instance_ids" {
    description = "List of instance IDs created"
    value       = aws_instance.this[*].id
}
output "instance_ips" {
    description = "List of public IPs of the instances created"
    value       = aws_instance.this[*].public_ip
}
output "private_ips" {
    description = "List of private IPs of the instances created"
    value       = aws_instance.this[*].private_ip
}
output "usernames" {
    description = "List of usernames for the instances created"
    value       = aws_instance.this[*].user_data
  
}