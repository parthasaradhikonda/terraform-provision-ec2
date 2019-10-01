# Attach ebs volumes to the ec2's
resource "aws_volume_attachment" "volume_attachement" {
  count       = "${var.ec2_instance_count * var.ec2_ebs_volume_count}"
  volume_id   = "${aws_ebs_volume.ebs_volume.*.id[count.index]}"
  device_name = "${element(var.ec2_device_names, count.index)}"
  instance_id = "${element(aws_instance.ec2.*.id, count.index)}"
}