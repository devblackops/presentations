variable "prefix" {
  type        = string
  description = "Prefix used to name storage account"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group to deploy into"
}

variable "location" {
  type        = string
  description = "Location of storage account"
}

variable "tags" {
  type        = map(any)
  description = "Tags to apply to storage account"
  default     = {}
}

variable "account_tier" {
  type        = string
  description = "Account tier of storage account"
  default     = "Standard"
}

variable "replication_type" {
  type        = string
  description = "Replication type of storage account"
  default     = "LRS"
}

variable "delete_retention_days" {
  type        = number
  description = "The number of days that deleted blobs will be retained"
  default     = 14
}
