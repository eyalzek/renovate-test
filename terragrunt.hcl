generate "versions" {
  path      = "versions.tf"
  if_exists = "overwrite"
  contents  = <<EOF
terraform {
  required_version = "~> 0.14.0"

  backend "gcs" {}

  required_providers {
    github = {
      source  = "hashicorp/github"
      version = "3.0.1"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 2.0"
    }
  }
}
EOF
}
