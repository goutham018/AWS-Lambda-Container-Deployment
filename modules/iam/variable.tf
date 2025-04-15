variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "policy_arn" {
  description = "IAM policy ARN to attach to the Lambda role"
  type        = string
}