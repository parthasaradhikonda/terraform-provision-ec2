# Provisioning EC2
resource "aws_instance" "nfs-holder-instance" {
  count                = "${var.ec2_instance_count}"
  ami                  = "${var.ami_id}"
  instance_type        = "${var.instance_type}"
  key_name             = "${var.key_name}"
  security_groups      = ["${var.associated_security_group}"]
  iam_instance_profile = "${var.iam_instance_profile}"

  tags {
    Name  = "CMT-Backup-Test-${count.index}"
  }
}