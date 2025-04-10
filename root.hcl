remote_state {
  backend = "gcs"
  config = {
    bucket         = "terragrunt-tofu-state"
    prefix         = "${path_relative_to_include()}"
    project = "personal-playground-437910"
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents  = <<EOF
provider "google" {
  project = "personal-playground-437910"
}
EOF
}

generate "required_providers" {
  path      = "required_providers.tf"
  if_exists = "overwrite"
  contents  = <<EOF
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}
EOF
}
