provider "azurerm" {
}

resource "azurerm_resource_group" "resourceGroup" {
  name     = var.resourceGroupName
  location = var.location
  tags     = var.tags
}

