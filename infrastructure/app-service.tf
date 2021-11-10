resource "azurerm_app_service_plan" "app" {
  name = "plan-web-test"
  location = azurerm_resource_group.app.location
  resource_group_name = azurerm_resource_group.app.name
  
  kind = "Linux"
  reserved = true

  sku {
    tier = "Production"
    size = "P1V2"
    capacity = 1
  }
}