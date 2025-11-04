output "subnet_id" { value = data.aws_subnet.ayto_demo_subnet.id }
output "sg_id" { value = aws_security_group.main.id }
