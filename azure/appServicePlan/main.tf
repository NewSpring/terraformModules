#Create App Service Plan
resource "azurerm_app_service_plan" "appServicePlan" {
  name                = var.appServicePlanName
  location            = var.location
  resource_group_name = var.resourceGroupName
  tags                = var.tags

  sku {
    tier = var.appServicePlanSkuTier
    size = var.appServicePlanSkuSize
  }
}

