resource "azurerm_dns_mx_record" "mxRecord" {
  name                = var.mxRecordName
  zone_name           = var.dnsZoneName
  resource_group_name = var.resourceGroupName
  ttl                 = var.ttl
  tags                = var.tags

  dynamic "record" {
    for_each = var.record
    content {
      preference = record.value.preference
      exchange   = record.value.exchange
    }
  }
}
