resource "azurerm_sql_server" "sqlServer" {
  name                         = var.sqlServerName
  resource_group_name          = var.resourceGroupName
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sqlAdministratorLogin
  administrator_login_password = var.sqlAdministratorPassword
  tags                         = var.tags
}
