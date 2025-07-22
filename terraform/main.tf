provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "bookhub-resources"
  location = "East US"
}

resource "azurerm_container_registry" "acr" {
  name                = "bookhubacr123"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  sku                 = "Basic"
  admin_enabled       = true
}

resource "azurerm_postgresql_flexible_server" "db" {
  name                   = "bookhub-db"
  resource_group_name    = azurerm_resource_group.main.name
  location               = azurerm_resource_group.main.location
  administrator_login    = "admin"
  administrator_password = "Password123!"
  sku_name               = "B1ms"
  version                = "12"
}

resource "azurerm_app_service_plan" "plan" {
  name                = "bookhub-plan"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  kind                = "Linux"
  reserved            = true
  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_web_app" "app" {
  name                = "bookhub-web"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  service_plan_id     = azurerm_app_service_plan.plan.id

  site_config {
    linux_fx_version = "DOCKER|bookhubacr123.azurecr.io/bookhub-app:latest"
  }

  app_settings = {
    DOCKER_REGISTRY_SERVER_URL      = "https://bookhubacr123.azurecr.io"
    DOCKER_REGISTRY_SERVER_USERNAME = azurerm_container_registry.acr.admin_username
    DOCKER_REGISTRY_SERVER_PASSWORD = azurerm_container_registry.acr.admin_password
  }
}
