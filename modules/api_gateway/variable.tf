variable "api_name" {
  description = "Name of the API Gateway"
  type        = string
}

variable "api_description" {
  description = "Description of the API Gateway"
  type        = string
  default     = "API Gateway to trigger Lambda function"
}

variable "resource_path" {
  description = "Path for the API Gateway resource"
  type        = string
}

variable "lambda_function_name" {
  description = "Name of the Lambda function to integrate with API Gateway"
  type        = string
}

variable "stage_name" {
  description = "Stage name for the API Gateway deployment"
  type        = string
  default     = "dev"
}

variable "lambda_invoke_arn" {
  description = "Invoke ARN of the Lambda function"
  type        = string
}