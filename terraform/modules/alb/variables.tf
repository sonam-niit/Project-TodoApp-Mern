variable "subnet_ids" {
  description = "List of subnet IDs for the ALB"
  type        = list(string)
}
variable "security_group_id" {
  description = "value of the security group ID for the ALB"
    type        = string
}
variable "vpc_id" {
  description = "VPC ID for the ALB"
  type        = string
}
variable "instnce_ids" {
  description = "List of instance IDs for the ALB"
  type        = list(string)
}