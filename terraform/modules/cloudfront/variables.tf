variable "s3_bucket_domain_name" {
  description = "S3 bucket regional domain name"
  type        = string
}

variable "comment" {
  description = "Comment for CloudFront distribution"
  type        = string
  default     = "CloudFront Distribution for Frontend Hosting"
}

variable "default_root_object" {
  description = "Default root object for CloudFront"
  type        = string
  default     = "index.html"
}
