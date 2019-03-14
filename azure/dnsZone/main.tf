resource "azurerm_dns_zone" "dnsZone" {
  name                = var.dnsZoneName
  resource_group_name = var.resourceGroupName
  zone_type           = var.dnsZoneType
  tags                = var.tags
}

