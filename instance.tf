resource "aws_instance" "server1" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.subnet1.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_icmp_ssh.id, aws_security_group.allow_http_https.id]
  private_ip                  = var.subnet1_private_ip
  key_name                    = aws_key_pair.key1.key_name
  user_data                   = file("user-data.sh")

  tags = {
    Name        = "server-1"
    Owner       = "student_5"
    Environment = "develop"
    OS          = "amazon-linux"
  }
}