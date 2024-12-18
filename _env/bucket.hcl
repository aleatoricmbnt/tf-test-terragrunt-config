terraform {
  source = "git@github.com:aleatoricmbnt/tf-test-terragrunt-support.git//modules/gcp-bucket?ref=v0.0.2"
}

dependency "helper" {
  config_path = "../qa/helpers"
}

inputs = {
  bucket_name = dependency.helper.outputs.random_pet_name
  region      = "us-east"
}