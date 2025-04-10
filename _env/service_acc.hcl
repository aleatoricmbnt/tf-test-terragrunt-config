terraform {
  source = "git@github.com:aleatoricmbnt/tf-test-terragrunt-support.git//modules/gcp-servacc?ref=v0.0.2"
}

dependency "helper" {
  config_path = "${get_terragrunt_dir()}/../helpers"
  skip_outputs = true
}

inputs = {
  service_acc_name = "smth-to-create" #dependency.helper.outputs.random_pet_name
  service_acc_id   = "smth-to-create" #dependency.helper.outputs.random_pet_name
}