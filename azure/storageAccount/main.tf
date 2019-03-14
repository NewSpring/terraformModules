resource "azurerm_storage_account" "storageAccount" {
  name                     = var.storageAccountName
  resource_group_name      = var.resourceGroupName
  location                 = var.location
  account_kind             = var.accountKind
  account_tier             = var.accountTier
  account_replication_type = var.accountReplicationType
  tags                     = var.tags
}

