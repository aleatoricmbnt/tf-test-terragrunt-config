include "root" {
  path = find_in_parent_folders("root.hcl")
}

include "env" {
  path   = "${get_terragrunt_dir()}/../../_env/bucket.hcl"
  expose = true
}

inputs = {
  region      = "${include.env.inputs.region}1"
}
