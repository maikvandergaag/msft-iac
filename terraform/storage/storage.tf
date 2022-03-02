terraform {
  cloud {
    organization = "familie-vandergaag"

    workspaces {
      name = "msft-iac"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resourcegroup
  location = var.location
  tags = {
     category = "testing"
     environment = "dev"
     usage = "testing"
     clean = "true"
     owner = "maik@familie-vandergaag.nl"
   }
}

resource "azurerm_storage_account" "storageAccount" {
  name                     = var.storageName
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
     category = "testing"
     environment = "dev"
     usage = "testing"
     clean = "true"
     owner = "maik@familie-vandergaag.nl"
  }
}