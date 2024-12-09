data "tfe_workspace" "test" {
  name         = "dummy-tfe"
  organization = "wellsiau-org"
}

data "tfe_variables" "test" {
  workspace_id = data.tfe_workspace.test.id
}

output "vars" {
    value= data.tfe_variables.test
}

terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.57"
    }
  }
}
