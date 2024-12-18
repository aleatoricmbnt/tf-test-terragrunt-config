include "root" {
  path = find_in_parent_folders("root.hcl")
}

include "env" {
  path   = "${get_terragrunt_dir()}/../../_env/helper.hcl"
  expose = true
}
