# artificats
# These can be pipelined to next stage
output "instance_ips" {
  value = ["${aws_instance.nfs-holder-instance.*.private_ip}"]
}