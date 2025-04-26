variable "azs" {
  description = "List of availability zones to use for the VPC"
  type        = list(string)
#   default     = ["us-east-1a", "us-east-1b", "us-east-1c"]  
}
