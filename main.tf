provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_lambda_function" "hello" {
  filename      = "lambda_function_payload.zip"
  function_name = join("", ["hello-function-", var.env])
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "handler.hello"
  source_code_hash = filebase64sha256("lambda_function_payload.zip")
  runtime = "nodejs12.x"
  tags = {
    Environment = var.environment
  }
}
