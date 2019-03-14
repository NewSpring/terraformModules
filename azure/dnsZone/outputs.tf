output "nameServers" {
  value       = azurerm_dns_zone.dnsZone.name_servers
}

output "zoneName" {
  value = azurerm_dns_zone.dnsZone.name
}
