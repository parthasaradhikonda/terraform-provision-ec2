# Region to work with
variable "aws_region" {
  type    = "string"
  default = "us-east-1"
}

# Base image for launching the ec2
# Note: This is our custom baked image
variable "ami_id" {
  type    = "string"
  default = ""
}

# Instance profile
variable "instance_type" {
  type    = "string"
  default = "t2.micro"
}

# Key name to get access with
variable "key_name" {
  type    = "string"
  default = ""
}

# Role to attch to the ec2
variable "iam_role" {
  type    = "string"
  default = ""
}

# VPC for ec2
# EC2 will fall in this network
variable "associated_vpc_id" {
  type    = "string"
  default = ""
}

# VPC for ec2
# EC2 will fall in this subnet
variable "associated_subnet_id" {
  type    = "string"
  default = ""
}

# Security group (inboud & outbound)
variable "associated_security_group" {
  type    = "string"
  default = ""
}

# EBS Volume (Size for all the volumes)
variable "ebs_volume_size" {
  type    = "number"
  default = 1
}

# Number of instances
# drive names as
variable "ec2_device_names" {
  default = [
    "/dev/sdd",
    "/dev/sde",
    "/dev/sdf",
    "/dev/sdg",
  ]
}

# How many instances needs to be created?
variable "ec2_instance_count" {
  type = "number"
  default = 1
}

# How many volumes needs to be created per instance?
variable "ec2_ebs_volume_count" {
  type = "number"
  default = 4
}