resource "azurerm_dns_a_record" "aRecord" {
  name                = var.aRecordNames
  zone_name           = var.zoneName
  resource_group_name = var.resourceGroupName
  ttl                 = var.ttl
  records             = var.records
}
