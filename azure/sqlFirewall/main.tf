resource "azurerm_sql_firewall_rule" "firewallRule" {
  name                = var.firewallRuleName
  resource_group_name = var.resourceGroupName
  server_name         = var.sqlServerName
  start_ip_address    = var.startIpAddress
  end_ip_address      = var.endIpAddress
}

