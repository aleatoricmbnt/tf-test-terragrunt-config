include "root" {
  path = find_in_parent_folders("root.hcl")
}

include "env" {
  path   = "${get_terragrunt_dir()}/../../_env/service_acc.hcl"
  expose = true
}

inputs = {
  service_acc_id = "qa-${include.env.inputs.service_acc_id}"
  service_acc_name = "qa-${include.env.inputs.service_acc_id}"
}
