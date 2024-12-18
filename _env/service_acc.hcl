terraform {
  source = "git@github.com:aleatoricmbnt/tf-test-terragrunt-support.git//modules/gcp-servacc?ref=v0.0.1"
}

dependency "helper" {
  config_path = "../helper"
}

inputs = {
  service_acc_name = dependency.helper.outputs.random_pet_name
  service_acc_id   = dependency.helper.outputs.random_pet_name
}