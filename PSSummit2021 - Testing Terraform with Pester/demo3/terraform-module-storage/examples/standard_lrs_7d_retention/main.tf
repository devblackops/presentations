terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.53.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 2.3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "random_id" "prefix" {
  byte_length = 4
}

resource "azurerm_resource_group" "test" {
  name     = "tf_${random_id.prefix.hex}"
  location = var.location

  tags = var.tags
}

module "storage" {
    source = "../../"

    prefix                = random_id.prefix.hex
    resource_group_name   = azurerm_resource_group.test.name
    location              = var.location
    tags                  = var.tags
    replication_type      = var.replication_type
    account_tier          = var.account_tier
    delete_retention_days = var.delete_retention_days
}
