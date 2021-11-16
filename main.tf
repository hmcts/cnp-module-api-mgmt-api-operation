resource "random_string" "random" {
  length  = 16
  special = false
}

resource "azurerm_api_management_api_operation" "apim_api_operation" {
  operation_id = var.operation_id == "" ? random_string.random.result : var.operation_id

  api_name            = var.api_mgmt_api_name
  api_management_name = var.api_mgmt_name
  resource_group_name = var.api_mgmt_rg

  display_name = var.display_name
  description  = var.description

  method       = var.method
  url_template = var.url_template
}