variable "rolename" {
  type        = string
  description = "Name of the role."
}
variable "s3_bucket_arn" {
  type        = string
  description = "ARN of S3 bucket for store tfstate."
}
variable "kms_alias" {
  type        = string
  default     = "s3-terraform" # NOTE: default value if https://github.com/moajo/terraform-backend-s3-bucket
  description = "Alias for the KMS key used to encrypt the S3 bucket."
}
variable "delegate_principals" {
  type        = list(string)
  description = "List of principals to allow for sts:AssumeRole"
}
