output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

output "instance_id" {
  value = aws_instance.ec2_instance.id
}

output "cpu_core" {
  value = aws_instance.ec2_instance.cpu_core_count
}

output "instance_type" {
  value = aws_instance.ec2_instance.instance_type
}