# Return list
output "zones" {
 value       = data.aws_availability_zones.west.names
}

# Return one value
output "zone" {
 value       = data.aws_availability_zones.west.names[0]
}

# Return security group id
output "security_group" {
 value       = data.aws_security_group.sgroup.id
}