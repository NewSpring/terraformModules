resource "azurerm_key_vault" "keyVault" {
  name                = var.vaultName
  location            = var.location
  resource_group_name = var.resourceGroupName
  tenant_id           = var.tenantId
  tags                = var.tags

  dynamic "sku" {
    for_each = var.sku
    content {
      name = sku.value.skuName
    }
  }

  dynamic "access_policy" {
    for_each = var.accessPolicy
    content {
      tenant_id          = access_policy.value.tenantId
      object_id          = access_policy.value.objectId
      key_permissions    = access_policy.value.keyPermissions
      secret_permissions = access_policy.value.secretPermissions
    }
  }
}
