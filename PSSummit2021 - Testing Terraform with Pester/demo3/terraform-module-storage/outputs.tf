output "storage_account_id" {
  value       = azurerm_storage_account.storage.id
  description = "Resource ID of storage account"
}

output "storage_account_name" {
  value       = azurerm_storage_account.storage.name
  description = "Name of storage account"
}

output "storage_account_location" {
  value       = azurerm_storage_account.storage.location
  description = "Location of storage account"
}
