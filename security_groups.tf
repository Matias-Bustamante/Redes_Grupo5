resource "aws_security_group" "allow_http_ssh" {
  name        = "allow_http_ssh"
  description = "Permite HTTP y SSH"
  vpc_id      = var.vpc1_id

  ingress {
    description = "SSH from Anywere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP from Anywere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "HTTP y SSH"
  }
}
