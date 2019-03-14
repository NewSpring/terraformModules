output "groupName" {
  value = azurerm_resource_group.resourceGroup.name
}

output "location" {
  value = azurerm_resource_group.resourceGroup.location
}

output "tags" {
  value = azurerm_resource_group.resourceGroup.tags
}
