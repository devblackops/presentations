terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 2.53.0"
    }
  }
}

provider "azurerm" {
  features {}
}

locals {
  location = "westus"
  tags = {
    environment = "development"
  }
}

resource "azurerm_resource_group" "rsg" {
  name     = "PSSummit2021"
  location = local.location
  tags = {
    environment = "development"
  }
}

module "storage" {
  source = "./modules/terraform-module-storage"

  prefix              = "1243905dfjasdf"
  location            = local.location
  resource_group_name = azurerm_resource_group.rsg.name
  replication_type    = "GRS"
  tags                = local.tags
}

output "storage_account_id" {
  value = module.storage.storage_account_id
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}
