locals {
  ip_filepath = "ips.json"

  common_tags = {
    Service     = "Infra Terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Tobias Andre Eggers"
  }
}