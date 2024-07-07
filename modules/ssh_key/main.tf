resource "tls_private_key" "kp" {
  algorithm = "RSA"
}

resource "local_file" "kp_private" {
  content  = tls_private_key.kp.private_key_pem
  filename = "./kp.pem"
}

resource "aws_key_pair" "kp_public" {
  key_name   = "kp.pem"
  public_key = tls_private_key.kp.public_key_openssh
  tags       = var.default_tags
}