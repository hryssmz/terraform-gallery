# outputs.tf
output "instance_ami" {
  value = aws_instance.al2023.ami
}

output "instance_arn" {
  value = aws_instance.al2023.arn
}
