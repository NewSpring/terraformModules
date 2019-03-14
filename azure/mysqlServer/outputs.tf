output "fqdn" {
  value       = "${azurerm_mysql_server.mysqlServer.fqdn}"
}

output "serverName" {
  value       = "${azurerm_mysql_server.mysqlServer.name}"
}
