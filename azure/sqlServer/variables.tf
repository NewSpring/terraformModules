variable "sqlServerName" {
  description = "The name of the sql server"
}

variable "resourceGroupName" {
  description = "The name of the resource group"
}

variable "location" {
  description = "The location/region where the resources are created."
}

variable "sqlAdministratorLogin" {
  description = "The sql administrator login to create"
}

variable "sqlAdministratorPassword" {
  description = "The sql administrator password to create"
}

variable "tags" {
  description = "The tags to assign"
  type        = map(string)
}

