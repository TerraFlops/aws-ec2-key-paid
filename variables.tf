variable "name" {
  description = "Name of the EC2 key pair"
  type = string
}

variable "rsa_bits" {
  description = "Key complexity bits"
  type = number
  default = 4096
}

variable "create_secret" {
  description = "Boolean flag, if true the private key value will be written to Secrets Manager. Defaults to true"
  type = bool
  default = true
}

variable "secret_prefix" {
  description = "Optional prefix to be appended to the secret in Secrets Manager. Defaults to '/Credentials/KeyPair'"
  type = string
  default = "/Credentials/KeyPair/"
}
