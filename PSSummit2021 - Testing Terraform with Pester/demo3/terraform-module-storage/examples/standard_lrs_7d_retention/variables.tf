variable "location" {
  type        = string
  description = "Location of storage account"
}

variable "tags" {
  type        = map
  description = "Tags to apply to storage account"
}

variable "account_tier" {
  type        = string
  description = "Account tier of storage account"
}

variable "replication_type" {
  type        = string
  description = "Replication type of storage account"
}

variable "delete_retention_days" {
  type        = number
  description = "The number of days that deleted blobs will be retained"
}
