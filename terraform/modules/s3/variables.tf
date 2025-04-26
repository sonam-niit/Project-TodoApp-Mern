variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "index_document" {
  description = "Default index document"
  type        = string
  default     = "index.html"
}

variable "error_document" {
  description = "Default error document"
  type        = string
  default     = "index.html"
}
