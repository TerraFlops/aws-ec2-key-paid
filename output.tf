output "key_pair_id" {
  value = aws_key_pair.key_pair.id
}

output "key_name" {
  value = aws_key_pair.key_pair.key_name
}

output "key_pair_arn" {
  value = aws_key_pair.key_pair.arn
}

output "key_pair_fingerprint" {
  value = aws_key_pair.key_pair.fingerprint
}

output "private_key_pem" {
  value = tls_private_key.private_key.private_key_pem
}

output "public_key_openssh" {
  value = tls_private_key.private_key.public_key_openssh
}

output "public_key_pem" {
  value = tls_private_key.private_key.public_key_pem
}