resource "aws_lambda_function" "this" {
  function_name = var.function_name
  image_uri     = var.image_uri
  memory_size   = var.memory_size
  timeout       = var.timeout
  package_type  = "Image"
  role = var.role_arn
}