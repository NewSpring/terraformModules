variable "resourceGroupName" {
}

variable "location" {
}

variable "dbServerName" {
}

variable "administratorLogin" {
}

variable "administratorPassword" {
}

variable "sslEnforcement" {
}

variable "sku" {
  type = list(object({
    skuName     = string
    skuCapacity = string
    skuTier     = string
    skuFamily   = string
  }))
}

variable "storageProfile" {
  type = list(object({
    storageMb           = string
    backupRetentionDays = string
    geoRedundantBackup  = string
  }))
}
