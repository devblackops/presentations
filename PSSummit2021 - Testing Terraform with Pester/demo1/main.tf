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

resource "azurerm_resource_group" "rsg" {
  name     = "PSSummit2021"
  location = "westus"
  tags = {
    environment = "development"
  }
}
