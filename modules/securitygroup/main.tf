resource "aws_security_group" "allow_yms_port_8080" {
  name        = "allow_yms_port_8080_security_group_name"
  description = "Allow 8080 inbound traffic"

  ingress {
    description = "Http from VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_8080"
  }
}


output "security_group_id" {
  description = "End point url of the webserver"
  value       = aws_security_group.allow_yms_port_8080.id
  sensitive   = false
}