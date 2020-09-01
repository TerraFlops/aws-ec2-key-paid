# Terraflops Terraform Module
 
### EC2 Key Pair

This module creates an EC2 key pair and optionally stores the private key
value into a Secrets Manager secret.

#### Example usage

```hcl-terraform
module "example" {
  source = "git::https://github.com/TerraFlops/ec2-key-pair?ref=v1.0"
  name = "Bastion"
  rsa_bits = 4096
  create_secret = true
  secret_prefix = "/Credentials/Ec2KeyPairs/"
}
```
