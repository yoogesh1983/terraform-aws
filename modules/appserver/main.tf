// App Server
resource "aws_instance" "app_server" {
  ami                    = var.ami_name
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  user_data              = <<-EOF
                              #!/bin/bash
                              echo "<h1>My server is up !</h1>" > index.html
                              nohup busybox httpd -f -p 8080
                            EOF
  tags = {
    "Name" = var.tag_name
  }
}

output "end_point_url" {
  description = "End point url of the webserver"
  value       = format("http://%s:8080", aws_instance.app_server.public_ip) //value="http://${aws_instance.app_server.public_ip}:8080"
  sensitive   = false
}