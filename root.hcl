remote_state {
  backend = "gcs"
  config = {
    bucket         = "terragrunt-tofu-state"
    prefix         = "${path_relative_to_include()}"
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents  = <<EOF
provider "google" {
  project = personal-playground-437910
}
EOF
}