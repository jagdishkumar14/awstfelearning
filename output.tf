output "public_ip" {
  value = aws_instance.web.public_ip
}
output "dns_name" {
  value = aws_instance.web.public_dns

}

output "private_name" {
  value = aws_instance.web.private_ip

}