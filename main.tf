# Create the EC2 IAM role to use for the image
# module "image_builder_role" {
#   source = "./iam_ec2_role"

#   ec2_iam_role_name  = var.ec2_iam_role_name
#   policy_description = "IAM ec2 instance profile for the Image Builder instances."
#   assume_role_policy = file("files/assumption_policy.json")
#   policy             = data.aws_iam_policy_document.image_builder.json
# }

data "aws_region" "current" {}
data "aws_partition" "current" {}

data "aws_subnet" "this" {
  filter {
    name   = "tag:Name"
    values = ["ImageBuilder-Public-Subnet"]
  }
}

data "aws_security_group" "this" {
  filter {
    name   = "tag:Name"
    values = ["ec2-imagebuilder"]
  }
}