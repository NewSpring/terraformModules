resource "azurerm_storage_container" "storageContainer" {
  name                 = var.containerName
  resource_group_name  = var.resourceGroupName
  storage_account_name = var.storageAccountName
}

