resource "azurerm_storage_account" "storage_block" {
  for_each = var.storage_account
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  #  tags= {
  #   provider="azurerm"
  #   purpose="webdeployment"
  # }
}


