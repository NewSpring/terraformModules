resource "azurerm_app_service" "appService" {
  name                = var.appServiceName
  location            = var.location
  resource_group_name = var.resourceGroupName
  app_service_plan_id = var.appServicePlanId
  tags                = var.tags

  dynamic "site_config" {
    for_each = var.siteConfig
    content {
      always_on                = site_config.value.alwaysOn
      dotnet_framework_version = site_config.value.dotnetFrameworkVersion
      ftps_state               = site_config.value.ftpsState
      http2_enabled            = site_config.value.http2Enabled
      websockets_enabled       = site_config.value.websocketsEnabled
    }
  }

  dynamic "connection_string" {
    for_each = var.connectionString
    content {
      name  = connection_string.value.connectionStringName
      type  = connection_string.value.connectionStringType
      value = connection_string.value.connectionStringValue
    }
  }
}
