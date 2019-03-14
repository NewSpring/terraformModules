variable "mxRecordName" {
}

variable "dnsZoneName" {
}

variable "resourceGroupName" {
}

variable "ttl" {
}

variable "tags" {
  type        = map(string)
}

variable "record" {
  type = list(object({
    preference = string
    exchange   = string
  }))
}
