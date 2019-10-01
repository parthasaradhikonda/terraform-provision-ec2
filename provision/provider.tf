# Provision for AWS Cloud
# Note: Accesskey and secretkey are not required as we're going with roles.
# role needs to be attached to access required services
provider "aws" {
  region = "${var.aws_region}"
}

