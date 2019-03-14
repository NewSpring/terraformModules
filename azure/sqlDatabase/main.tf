resource "azurerm_sql_database" "database" {
  name                             = var.sqlDatabaseName
  resource_group_name              = var.resourceGroupName
  location                         = var.location
  edition                          = var.sqlEdition
  collation                        = var.sqlCollation
  create_mode                      = var.sqlCreateMode
  requested_service_objective_name = var.sqlRequestedServiceObjectiveName
  server_name                      = var.sqlServerName
  tags                             = var.tags
}

