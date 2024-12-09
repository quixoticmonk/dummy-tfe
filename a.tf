data "tfe_variable_set" "test" {
  name         = "stacks_infra2_ou"
  organization = "wellsiau-org"
}

data "tfe_variables" "test" {
  variable_set_id = data.tfe_variable_set.test.id
}


output "vars" {
    value= data.tfe_variables.test
}
