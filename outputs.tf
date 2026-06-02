output "instance_public_ip" {
  value       = aws_instance.web_server.public_ip
  description = "The public IP address of the primary web server instance."
  sensitive   = false
  depends_on  = [aws_instance.web_server]
}
