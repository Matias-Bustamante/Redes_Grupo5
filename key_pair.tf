resource "aws_key_pair" "key1" {
  key_name   = "masterkey"
  public_key = var.key1
}
