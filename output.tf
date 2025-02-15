output "security_group_name" {
    value = aws_security_group.sg-demo.name
}

output "vpc_id" {
    value = aws_vpc.vp1.id
}

output "key_name" {
    value = aws_key_pair.ec2_key.key_name
}

output "ec2_public_ip" {
    value = aws_instance.server1.public_ip
}