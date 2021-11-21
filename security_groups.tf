resource "aws_security_group" "allow_icmp_ssh" {
  name        = "allow_icmp_ssh"
  description = "Permite ICMP y SSH"
  vpc_id      = aws_vpc.main1.id

  ingress {
    description = "SSH from Anywere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "ICMP from Anywere"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
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
    Name = "Ping y SSH"
  }
}

resource "aws_security_group" "allow_http_https" {
  name        = "allow_http_https"
  description = "Permite HTTP y HTTPS"
  vpc_id      = aws_vpc.main1.id

  ingress {
    description = "HTTP from Anywere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS from Anywere"
    from_port   = 443
    to_port     = 443
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
    Name = "HTTP y HTTPS"
  }
}