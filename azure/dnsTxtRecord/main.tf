resource "azurerm_dns_txt_record" "txtRecord" {
  name                = var.txtRecordName
  zone_name           = var.dnsZoneName
  resource_group_name = var.resourceGroupName
  ttl                 = var.ttl
  tags                = var.tags

  dynamic "record" {
    for_each = var.record
    content {
      value = record.value.value
    }
  }
}
