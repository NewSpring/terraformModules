resource "azurerm_mysql_server" "mysqlServer" {
  name                         = var.dbServerName
  location                     = var.location
  resource_group_name          = var.resourceGroupName
  administrator_login          = var.administratorLogin
  administrator_login_password = var.administratorPassword
  version                      = "5.7"
  ssl_enforcement              = var.sslEnforcement

  dynamic "sku" {
    for_each = var.sku
    content {
      name     = sku.value.skuName
      capacity = sku.value.skuCapacity
      tier     = sku.value.skuTier
      family   = sku.value.skuFamily
    }
  }
  dynamic "storage_profile" {
    for_each = var.storageProfile
    content {
      storage_mb            = storage_profile.value.storageMb
      backup_retention_days = storage_profile.value.backupRetentionDays
      geo_redundant_backup  = storage_profile.value.geoRedundantBackup
    }
  }
}
