variable "aws_region" {
  description = "AWS Region."
  type        = string
}

variable "env" {
  description = "Environment suffix."
  type        = string
}

variable "environment" {
  description = "Environment tag."
  type        = string
}

variable "aws_access_key" {
  description = "AWS access key."
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS secret key."
  type        = string
  sensitive   = true
}
