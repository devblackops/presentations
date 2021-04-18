resource "azurerm_storage_account" "storage" {
  name                = "${var.prefix}storage"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags

  enable_https_traffic_only = true
  allow_blob_public_access  = false
  min_tls_version           = "TLS1_2"

  account_tier             = var.account_tier
  account_replication_type = var.replication_type

  blob_properties {
    delete_retention_policy {
      days = var.delete_retention_days
    }
  }
}

resource "azurerm_storage_container" "my_stuff" {
  name                  = "mystuff"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}

resource "azurerm_advanced_threat_protection" "atp" {
  target_resource_id = azurerm_storage_account.storage.id
  enabled            = true
}
