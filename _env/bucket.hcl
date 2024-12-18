terraform {
  source = "git@github.com:aleatoricmbnt/tf-test-terragrunt-support.git//modules/gcp-bucket?ref=v0.0.2"
}

dependency "helper" {
  config_path = "${get_terragrunt_dir()}/../helpers"
}

inputs = {
  bucket_name = "initial-test-apply"
  region      = "us-east"
}