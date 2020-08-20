variable "region" {
  description = "This variable states the AWS region"
  default     = "eu-west-1"
}

variable "shared_key" {
  description = "This variable states the location of the shared_key file"
  default     = "~/.aws/credentials"
}
