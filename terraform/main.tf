provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "bookhub-rg"
  location = "East US"
}

resource "azurerm_container_registry" "acr" {
  name                = "bookhubacr123"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "azurerm_postgresql_flexible_server" "pg" {
  name                   = "bookhubpg"
  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location
  administrator_login    = "postgres"
  administrator_password = "SuperSecret123!"
  sku_name               = "B1ms"
  version                = "14"
  storage_mb             = 32768
}
