
resource "azurerm_linux_function_app" "function_block" {
  for_each                   = var.function_app
  name                       = each.value.name
  resource_group_name        = each.value.resource_group_name
  location                   = each.value.location
  storage_account_name       = each.value.storage_account_name
  storage_account_access_key = each.value.storage_account_access_key
  service_plan_id            = data.azurerm_service_plan.sp_data_block[each.key].id
  site_config {
  }
  # tags = {
  #   provider = "azurerm"
  #   purpose  = "webdeployment"
  # }
}



