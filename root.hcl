remote_state {
  backend = "gcs"
  config = {
    bucket         = "terragrunt-tofu-state"
    key            = "${path_relative_to_include()}/tofu.tfstate"
    prefix         = ""
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents  = <<EOF
provider "google" {
  project = null
}
EOF
}