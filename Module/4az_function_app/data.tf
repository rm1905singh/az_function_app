data "azurerm_service_plan" "sp_data_block" {
  for_each            = var.function_app
  name                = each.value.sp_name
  resource_group_name = each.value.resource_group_name
}
