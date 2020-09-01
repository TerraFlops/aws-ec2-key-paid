# Create the private key
resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits = var.rsa_bits
}

# Create the key pair
resource "aws_key_pair" "key_pair" {
  key_name = var.name
  public_key = tls_private_key.private_key.public_key_openssh
}

# If requested, store the private key value into Secrets Manager secret
resource "aws_secretsmanager_secret" "secret" {
  count = var.create_secret == true ? 1 : 0
  name = "${var.secret_prefix}${var.name}"
  description = "EC2 keypair (${var.name})"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "secret_version" {
  count = var.create_secret == true ? 1 : 0
  secret_id = aws_secretsmanager_secret.secret[0].id
  secret_string = tls_private_key.private_key.private_key_pem
}
