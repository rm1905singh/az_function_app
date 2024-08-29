resource "azurerm_service_plan" "service_block" {
  for_each            = var.service_app
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  os_type             = "Linux"
  sku_name            = "Y1"

  # tags = {
  #   provider = "azurerm"
  #   purpose  = "webdeployment"
  # }
}


