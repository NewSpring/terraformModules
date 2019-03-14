variable "resourceGroupName" {
}

variable "location" {
}

variable "vaultName" {
}

variable "tenantId" {
}

variable "tags" {
  type = map(string)
}

variable "sku" {
  type = list(object({
    skuName = string
}))
}

variable "accessPolicy" {
  type = list(object({
   tenantId = string
   objectId = string
   keyPermissions = list(string)
   secretPermissions = list(string)
}))
}
