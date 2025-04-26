variable "instance_count" {}
variable "ami_id" {
  description = "AMI ID to use for the instance"
  type        = string
}
variable "instance_type" {
  description = "Type of instance to create"
  type        = string
  default     = "t2.micro"
}
variable "key_name" {
  description = "Name of the key pair to use for SSH access"
  type        = string
}
variable "subnet_ids" {
  description = "List of subnet IDs to launch the instance in"
  type        = list(string)
}
variable "security_group_id" {
  description = "Security group ID to associate with the instance"
  type        = string

}
