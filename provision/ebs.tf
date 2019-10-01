# Create ebs volumes/instance
resource "aws_ebs_volume" "ebs_volume" {
  count             = "${var.ec2_instance_count * var.ec2_ebs_volume_count}"
  availability_zone = "${element(aws_instance.ec2.*.availability_zone, count.index)}"
  size              = "${var.ebs_volume_size}"
}