variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "image_uri" {
  description = "URI of the container image in ECR"
  type        = string
}

variable "memory_size" {
  description = "Memory size for the Lambda function"
  type        = number
  default     = 128
}

variable "timeout" {
  description = "Timeout for the Lambda function in seconds"
  type        = number
  default     = 30
}

variable "role_arn" {
  description = "IAM Role ARN for the Lambda function"
  type        = string
}