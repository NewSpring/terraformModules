output "sqlServerName" {
  description = "Server name of the Azure SQL Database created."
  value       = azurerm_sql_server.sqlServer.name
}

output "sqlServerFqdn" {
  description = "Fully Qualified Domain Name (FQDN) of the Azure SQL Database created."
  value       = azurerm_sql_server.sqlServer.fully_qualified_domain_name
}
