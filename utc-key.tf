resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

#create key pair
resource "aws_key_pair" "ec2_key" {
  key_name   = "utc-app"
  public_key = tls_private_key.ec2_key.public_key_openssh
}

#save private key locally
resource "local_file" "ssh_key" {
  filename = "utc-app.pem"
  content  = tls_private_key.ec2_key.private_key_pem
}