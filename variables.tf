variable "aws_region" {
  type        = string
  description = "The AWS region."
  default = "us-east-1"
}

variable "aws_cli_profile" {
  type        = string
  description = "The AWS CLI profile name."
  default = "default"
}

variable "ec2_iam_role_name" {
  type        = string
  description = "The EC2's IAM role name."
  default = "svc-ec2ImageBuilderExecRole"
}

variable "aws_s3_log_bucket" {
  type        = string
  description = "The S3 bucket name to send logs to."
  default = "ec2-image-builder-logs-us-east-1-424799221050"
}

variable "aws_s3_bucket" {
  type        = string
  description = "The S3 bucket name that stores the Image Builder componeent files."
  default = "ec2-image-builder-us-east-1-424799221050"
}

variable "ebs_root_vol_size" {
  type = number
  default = 30
}

variable "aws_key_pair_name" {
  type = string
  default = "emma-nova"
}

variable "image_receipe_version" {
  type = string
  default = "1.0.0"
}

variable "ami_name_tag" {
  type = string
  default = "Kyndryl-ec2ImageBuilder"
}