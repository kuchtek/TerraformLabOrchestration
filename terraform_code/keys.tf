resource "aws_key_pair" "terraform_key_pair" {
  key_name   = "lab-key"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "terraform_key" {
  content         = tls_private_key.rsa.private_key_pem
  filename        = "terraform_key_pair_for_ec2.pem"
  file_permission = "0600"
}