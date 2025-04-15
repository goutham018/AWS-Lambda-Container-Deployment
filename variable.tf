variable "ecr_repo_name" {
  description = "Name of the ECR repository to store the Lambda image"
  type        = string
  default     = "use-case-2"
}

variable "image_uri" {
  description = "Full ECR image URI (including tag) for the Lambda function"
  type        = string
  default = "273354635930.dkr.ecr.us-east-1.amazonaws.com/use-case-2:latest"
}