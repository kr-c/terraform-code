output "server_ip" {
  value       = aws_instance.myec2-us.public_ip
  description = "The private IP address of the main server instance"
}
