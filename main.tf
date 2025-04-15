provider "aws" {
  region = "us-east-1"
}

module "iam" {
  source        = "./modules/iam"
  function_name = "my-container-lambda"
  policy_arn    = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

module "lambda" {
  source        = "./modules/lambda"
  function_name = "my-container-lambda"
  image_uri     = var.image_uri
  memory_size   = 256
  timeout       = 60
  role_arn      = module.iam.role_arn
}

module "api_gateway" {
  source               = "./modules/api_gateway"
  api_name             = "my-container-api"
  api_description      = "API Gateway for my containerized Lambda function"
  resource_path        = "my-resource"
  lambda_invoke_arn    = module.lambda.lambda_invoke_arn
  stage_name           = "dev"
  lambda_function_name = module.lambda.lambda_function_name
}