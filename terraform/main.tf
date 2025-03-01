module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "pawel.szember+aft1@gmail.com"
    AccountName               = "aft1"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "pawel.szember+aft1admin@gmail.com"
    SSOUserFirstName          = "AFT1"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
