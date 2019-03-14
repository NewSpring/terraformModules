variable "resourceGroupName" {
  description = "The name of the resource group"
}

variable "location" {
  description = "The location/region where the resources are created."
}

variable "appServicePlanId" {
  description = "The app service plan id"
}

variable "appServiceName" {
  description = "The app service plan name"
}

variable "tags" {
  description = "The tags to apply to the resource"
  type        = map(string)
}

variable "siteConfig" {
  type = list(object({
    alwaysOn               = string
    dotnetFrameworkVersion = string
    ftpsState              = string
    http2Enabled           = string
    websocketsEnabled      = string
  }))
}


variable "connectionString" {
  type = list(object({
    connectionStringName  = string
    connectionStringType  = string
    connectionStringValue = string
  }))
}
